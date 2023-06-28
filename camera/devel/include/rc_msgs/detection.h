// Generated by gencpp from file rc_msgs/detection.msg
// DO NOT EDIT!


#ifndef RC_MSGS_MESSAGE_DETECTION_H
#define RC_MSGS_MESSAGE_DETECTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <rc_msgs/point.h>

namespace rc_msgs
{
template <class ContainerAllocator>
struct detection_
{
  typedef detection_<ContainerAllocator> Type;

  detection_()
    : label(0)
    , score(0.0)
    , x1(0.0)
    , y1(0.0)
    , x2(0.0)
    , y2(0.0)
    , contours()  {
    }
  detection_(const ContainerAllocator& _alloc)
    : label(0)
    , score(0.0)
    , x1(0.0)
    , y1(0.0)
    , x2(0.0)
    , y2(0.0)
    , contours(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _label_type;
  _label_type label;

   typedef float _score_type;
  _score_type score;

   typedef float _x1_type;
  _x1_type x1;

   typedef float _y1_type;
  _y1_type y1;

   typedef float _x2_type;
  _x2_type x2;

   typedef float _y2_type;
  _y2_type y2;

   typedef std::vector< ::rc_msgs::point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::rc_msgs::point_<ContainerAllocator> >::other >  _contours_type;
  _contours_type contours;





  typedef boost::shared_ptr< ::rc_msgs::detection_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rc_msgs::detection_<ContainerAllocator> const> ConstPtr;

}; // struct detection_

typedef ::rc_msgs::detection_<std::allocator<void> > detection;

typedef boost::shared_ptr< ::rc_msgs::detection > detectionPtr;
typedef boost::shared_ptr< ::rc_msgs::detection const> detectionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rc_msgs::detection_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rc_msgs::detection_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rc_msgs::detection_<ContainerAllocator1> & lhs, const ::rc_msgs::detection_<ContainerAllocator2> & rhs)
{
  return lhs.label == rhs.label &&
    lhs.score == rhs.score &&
    lhs.x1 == rhs.x1 &&
    lhs.y1 == rhs.y1 &&
    lhs.x2 == rhs.x2 &&
    lhs.y2 == rhs.y2 &&
    lhs.contours == rhs.contours;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rc_msgs::detection_<ContainerAllocator1> & lhs, const ::rc_msgs::detection_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rc_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rc_msgs::detection_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rc_msgs::detection_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rc_msgs::detection_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rc_msgs::detection_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rc_msgs::detection_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rc_msgs::detection_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rc_msgs::detection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "23cb67375d6ff3ac17afa20ebc5a5cd0";
  }

  static const char* value(const ::rc_msgs::detection_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x23cb67375d6ff3acULL;
  static const uint64_t static_value2 = 0x17afa20ebc5a5cd0ULL;
};

template<class ContainerAllocator>
struct DataType< ::rc_msgs::detection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rc_msgs/detection";
  }

  static const char* value(const ::rc_msgs::detection_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rc_msgs::detection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 label\n"
"float32 score\n"
"float32 x1\n"
"float32 y1\n"
"float32 x2\n"
"float32 y2\n"
"point[] contours\n"
"\n"
"================================================================================\n"
"MSG: rc_msgs/point\n"
"float32 x\n"
"float32 y\n"
;
  }

  static const char* value(const ::rc_msgs::detection_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rc_msgs::detection_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.label);
      stream.next(m.score);
      stream.next(m.x1);
      stream.next(m.y1);
      stream.next(m.x2);
      stream.next(m.y2);
      stream.next(m.contours);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct detection_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rc_msgs::detection_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rc_msgs::detection_<ContainerAllocator>& v)
  {
    s << indent << "label: ";
    Printer<int32_t>::stream(s, indent + "  ", v.label);
    s << indent << "score: ";
    Printer<float>::stream(s, indent + "  ", v.score);
    s << indent << "x1: ";
    Printer<float>::stream(s, indent + "  ", v.x1);
    s << indent << "y1: ";
    Printer<float>::stream(s, indent + "  ", v.y1);
    s << indent << "x2: ";
    Printer<float>::stream(s, indent + "  ", v.x2);
    s << indent << "y2: ";
    Printer<float>::stream(s, indent + "  ", v.y2);
    s << indent << "contours[]" << std::endl;
    for (size_t i = 0; i < v.contours.size(); ++i)
    {
      s << indent << "  contours[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rc_msgs::point_<ContainerAllocator> >::stream(s, indent + "    ", v.contours[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // RC_MSGS_MESSAGE_DETECTION_H