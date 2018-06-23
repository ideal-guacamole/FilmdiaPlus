package serviceImpl;

import dao.ProducerDataDao;
import entityPO.Producer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.ProducerDisplayService;

import java.util.List;

/**
 * Created by mac on 2017/5/17.
 */
@Service("producerDisplayService")
public class ProducerDisplayServiceImpl implements ProducerDisplayService {

    @Autowired
    private ProducerDataDao producerDataDao;

    @Override
    public List<Producer> getProducerInfo(List<String> imdb_producerID) {
        return producerDataDao.getProducerInfo(imdb_producerID);
    }
}
