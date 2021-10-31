// Generated by gencpp from file cozmo_rc/light_req.msg
// DO NOT EDIT!


#ifndef COZMO_RC_MESSAGE_LIGHT_REQ_H
#define COZMO_RC_MESSAGE_LIGHT_REQ_H

#include <ros/service_traits.h>


#include <cozmo_rc/light_reqRequest.h>
#include <cozmo_rc/light_reqResponse.h>


namespace cozmo_rc
{

struct light_req
{

typedef light_reqRequest Request;
typedef light_reqResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct light_req
} // namespace cozmo_rc


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cozmo_rc::light_req > {
  static const char* value()
  {
    return "31d336e006298e5af6b1db3920570f3b";
  }

  static const char* value(const ::cozmo_rc::light_req&) { return value(); }
};

template<>
struct DataType< ::cozmo_rc::light_req > {
  static const char* value()
  {
    return "cozmo_rc/light_req";
  }

  static const char* value(const ::cozmo_rc::light_req&) { return value(); }
};


// service_traits::MD5Sum< ::cozmo_rc::light_reqRequest> should match
// service_traits::MD5Sum< ::cozmo_rc::light_req >
template<>
struct MD5Sum< ::cozmo_rc::light_reqRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cozmo_rc::light_req >::value();
  }
  static const char* value(const ::cozmo_rc::light_reqRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cozmo_rc::light_reqRequest> should match
// service_traits::DataType< ::cozmo_rc::light_req >
template<>
struct DataType< ::cozmo_rc::light_reqRequest>
{
  static const char* value()
  {
    return DataType< ::cozmo_rc::light_req >::value();
  }
  static const char* value(const ::cozmo_rc::light_reqRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cozmo_rc::light_reqResponse> should match
// service_traits::MD5Sum< ::cozmo_rc::light_req >
template<>
struct MD5Sum< ::cozmo_rc::light_reqResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cozmo_rc::light_req >::value();
  }
  static const char* value(const ::cozmo_rc::light_reqResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cozmo_rc::light_reqResponse> should match
// service_traits::DataType< ::cozmo_rc::light_req >
template<>
struct DataType< ::cozmo_rc::light_reqResponse>
{
  static const char* value()
  {
    return DataType< ::cozmo_rc::light_req >::value();
  }
  static const char* value(const ::cozmo_rc::light_reqResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // COZMO_RC_MESSAGE_LIGHT_REQ_H