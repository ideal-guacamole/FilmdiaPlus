package service;

import entityPO.Producer;

import java.util.List;

/**
 * Created by mac on 2017/5/17.
 */
public interface ProducerDisplayService {

    /**
     * 根据 imdb_producerID 拿取对应Producer实体
     * @param imdb_producerID producer IMDB ID
     * @return Producer实体
     */
    public List<Producer> getProducerInfo(List<String> imdb_producerID);

}
