

SELECT
id,
user_id,
teacher_id,
class_id,
assignment_id,
explanation,
explanation_order,
sharable,
up_votes,
down_votes

FROM peer_explanations
LEFT OUTER JOIN
(
	--review_id = id of the thing being reviewed
	SELECT review_id, COUNT(vote_value) AS up_votes
	FROM ratings
	WHERE review_id IN
	(
		SELECT id
		FROM peer_explanations
		WHERE (id = ? OR ? = 'false')
		AND (teacher_id = ? OR ? = 'false')
		-- filter a column for a specific value
		AND (class_id = 1 OR 'true' = 'false')
		-- not filtering a column on a specific value
		AND (assignment_id = NULL OR 'false' = 'false')
		AND (user_id = ? OR ? = 'false')
		AND (problem_id = ? OR ? = 'false')
		AND (sharable = ? OR ? = 'false')
		AND (studentSubmitted = ? OR ? = 'false')
	)
	AND vote_value = 1
	--review_type_id = type of content being rated (problem, hint, explanation, etc...)
	--1 = explanation
	AND review_type_id = 1
	GROUP BY review_id
) AS up_votes

ON up_votes.review_id = peer_explanations.id

LEFT OUTER JOIN
(

	SELECT review_id, COUNT(vote_value) AS down_votes
	FROM ratings
	WHERE review_id IN
	(
		SELECT id
		FROM peer_explanations
		WHERE (id = ? OR ? = 'false')
		AND (teacher_id = ? OR ? = 'false')
		AND (class_id = ? OR ? = 'false')
		AND (assignment_id = ? OR ? = 'false')
		AND (user_id = ? OR ? = 'false')
		AND (problem_id = ? OR ? = 'false')
		AND (sharable = ? OR ? = 'false')
		AND (studentSubmitted = ? OR ? = 'false')
	)
	AND vote_value = -1
	--1 = explanation
	AND review_type_id = 1
	GROUP BY review_id
) AS down_votes

ON down_votes.review_id = peer_explanations.id

WHERE (id = ? OR ? = 'false')
AND (teacher_id = ? OR ? = 'false')
AND (class_id = ? OR ? = 'false')
AND (assignment_id = ? OR ? = 'false')
AND (user_id = ? OR ? = 'false')
AND (problem_id = ? OR ? = 'false')
AND (sharable = ? OR ? = 'false')
AND (studentSubmitted = ? OR ? = 'false')
AND
(? = 'false' OR id IN
	(
		SELECT peer_explanation_id
		FROM explanation_flaggings
	)
)
AND
(? = 'false' OR id IN
	(
		SELECT peer_explanation_id
		FROM promoted_explanations
	)
)

ORDER BY id ASC;
