package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AnswerMapper {

	public List<answerVO> AnswerList();

}
