#import "TLRPCphone_setCallRating.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "TLInputPhoneCall.h"
#import "TLUpdates.h"

@implementation TLRPCphone_setCallRating


- (Class)responseClass
{
    return [TLUpdates class];
}

- (int)impliedResponseSignature
{
    return 0;
}

- (int)layerVersion
{
    return 64;
}

- (int32_t)TLconstructorSignature
{
    TGLog(@"constructorSignature is not implemented for base type");
    return 0;
}

- (int32_t)TLconstructorName
{
    TGLog(@"constructorName is not implemented for base type");
    return 0;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::tr1::shared_ptr<TLMetaObject>)__unused metaObject
{
    TGLog(@"TLbuildFromMetaObject is not implemented for base type");
    return nil;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values
{
    TGLog(@"TLfillFieldsWithValues is not implemented for base type");
}


@end

@implementation TLRPCphone_setCallRating$phone_setCallRating : TLRPCphone_setCallRating


- (int32_t)TLconstructorSignature
{
    return (int32_t)0x1c536a34;
}

- (int32_t)TLconstructorName
{
    return (int32_t)0x7173d1c5;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::tr1::shared_ptr<TLMetaObject>)metaObject
{
    TLRPCphone_setCallRating$phone_setCallRating *object = [[TLRPCphone_setCallRating$phone_setCallRating alloc] init];
    object.peer = metaObject->getObject((int32_t)0x9344c37d);
    object.rating = metaObject->getInt32((int32_t)0x390d4933);
    object.comment = metaObject->getString((int32_t)0xfa216e);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeObject;
        value.nativeObject = self.peer;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x9344c37d, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.rating;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x390d4933, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeString;
        value.nativeObject = self.comment;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xfa216e, value));
    }
}


@end

