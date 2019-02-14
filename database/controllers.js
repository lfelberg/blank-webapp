const connection = require('./index.js');

module.exports.getAvailableInterviews = () => {
  const queryString = 'SELECT * FROM times WHERE candidate_id = null ';
  return connection.query(queryString);
};

module.exports.addInterview = (interviewerId, slot) => {
  const queryString = 'INSERT INTO times (interviewer_id, slot)'
    + ` VALUES (${interviewerId}, '${slot}');`;
  return connection.query(queryString);
};
