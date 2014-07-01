package com.homeninja.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.homeninja.dao.ContactUsDAO;
import com.homeninja.entities.ContactPurpose;
import com.homeninja.entities.ContactUs;
@Service
@Transactional
public class ContactUsDAOImpl implements ContactUsDAO {

	@Resource
	private SessionFactory sessionFactory;

	@Override
	public boolean saveMessage(ContactUs contactUsForm) {

		try {
			this.sessionFactory.getCurrentSession().save(contactUsForm);
			return true;
		} catch (Exception e) {
			return false;
		}

	}

	@Override
	public List<ContactPurpose> getContactPurpose() {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"from ContactPurpose");

		List<ContactPurpose> contacPList = query.list();
		return contacPList;

	}
}
