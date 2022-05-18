.class public Lnet/fortuna/ical4j/model/PropertyFactoryImpl;
.super Lnet/fortuna/ical4j/model/AbstractContentFactory;
.source "PropertyFactoryImpl.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/PropertyFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$VersionFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$UrlFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$UidFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TzUrlFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TzOffsetToFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TzOffsetFromFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TzNameFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TzIdFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TriggerFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TranspFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TelFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$SummaryFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$StreetAddressFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$StatusFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$SequenceFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RRuleFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ResourcesFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RequestStatusFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RepeatFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RelatedToFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RegionFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RecurrenceIdFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RDateFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ProdIdFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$PriorityFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$PostalcodeFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$PercentCompleteFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$OrganizerFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$NameFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$MethodFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$LocationTypeFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$LocationFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$LocalityFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$LastModifiedFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$GeoFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$FreeBusyFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ExtendedAddressFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ExRuleFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ExDateFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$DurationFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$DueFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$DtStartFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$DtStampFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$DtEndFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$DescriptionFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CreatedFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CountryFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ContactFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CompletedFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CommentFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ClazzFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CategoriesFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CalScaleFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$AttendeeFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$AttachFactory;,
        Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ActionFactory;
    }
.end annotation


# static fields
.field private static instance:Lnet/fortuna/ical4j/model/PropertyFactoryImpl; = null

.field private static final serialVersionUID:J = -0x638ffdff53af6039L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;-><init>()V

    sput-object v0, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->instance:Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/AbstractContentFactory;-><init>()V

    .line 114
    const-string v0, "ACTION"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ActionFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ActionFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    const-string v0, "ATTACH"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$AttachFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$AttachFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    const-string v0, "ATTENDEE"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$AttendeeFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$AttendeeFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    const-string v0, "CALSCALE"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CalScaleFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CalScaleFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    const-string v0, "CATEGORIES"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CategoriesFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CategoriesFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    const-string v0, "CLASS"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ClazzFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ClazzFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    const-string v0, "COMMENT"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CommentFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CommentFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    const-string v0, "COMPLETED"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CompletedFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CompletedFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string v0, "CONTACT"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ContactFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ContactFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v0, "COUNTRY"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CountryFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CountryFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    const-string v0, "CREATED"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CreatedFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CreatedFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    const-string v0, "DESCRIPTION"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$DescriptionFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$DescriptionFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    const-string v0, "DTEND"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$DtEndFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$DtEndFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    const-string v0, "DTSTAMP"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$DtStampFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$DtStampFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string v0, "DTSTART"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$DtStartFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$DtStartFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v0, "DUE"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$DueFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$DueFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string v0, "DURATION"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$DurationFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$DurationFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string v0, "EXDATE"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ExDateFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ExDateFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    const-string v0, "EXRULE"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ExRuleFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ExRuleFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string v0, "EXTENDED-ADDRESS"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ExtendedAddressFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ExtendedAddressFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string v0, "FREEBUSY"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$FreeBusyFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$FreeBusyFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string v0, "GEO"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$GeoFactory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$GeoFactory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const-string v0, "LAST-MODIFIED"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$LastModifiedFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$LastModifiedFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    const-string v0, "LOCALITY"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$LocalityFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$LocalityFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    const-string v0, "LOCATION"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$LocationFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$LocationFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    const-string v0, "LOCATION-TYPE"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$LocationTypeFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$LocationTypeFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    const-string v0, "METHOD"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$MethodFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$MethodFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    const-string v0, "NAME"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$NameFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$NameFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string v0, "ORGANIZER"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$OrganizerFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$OrganizerFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    const-string v0, "PERCENT-COMPLETE"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$PercentCompleteFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$PercentCompleteFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    const-string v0, "POSTAL-CODE"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$PostalcodeFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$PostalcodeFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    const-string v0, "PRIORITY"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$PriorityFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$PriorityFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    const-string v0, "PRODID"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ProdIdFactory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ProdIdFactory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    const-string v0, "RDATE"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RDateFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RDateFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    const-string v0, "RECURRENCE-ID"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RecurrenceIdFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RecurrenceIdFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    const-string v0, "REGION"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RegionFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RegionFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    const-string v0, "RELATED-TO"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RelatedToFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RelatedToFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    const-string v0, "REPEAT"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RepeatFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RepeatFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    const-string v0, "REQUEST-STATUS"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RequestStatusFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RequestStatusFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    const-string v0, "RESOURCES"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ResourcesFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ResourcesFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    const-string v0, "RRULE"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RRuleFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$RRuleFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    const-string v0, "SEQUENCE"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$SequenceFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$SequenceFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    const-string v0, "STATUS"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$StatusFactory;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$StatusFactory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    const-string v0, "STREET-ADDRESS"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$StreetAddressFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$StreetAddressFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    const-string v0, "SUMMARY"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$SummaryFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$SummaryFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    const-string v0, "TEL"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TelFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TelFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    const-string v0, "TRANSP"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TranspFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TranspFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    const-string v0, "TRIGGER"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TriggerFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TriggerFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    const-string v0, "TZID"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TzIdFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TzIdFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    const-string v0, "TZNAME"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TzNameFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TzNameFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    const-string v0, "TZOFFSETFROM"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TzOffsetFromFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TzOffsetFromFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    const-string v0, "TZOFFSETTO"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TzOffsetToFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TzOffsetToFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    const-string v0, "TZURL"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TzUrlFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$TzUrlFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    const-string v0, "UID"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$UidFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$UidFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    const-string v0, "URL"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$UrlFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$UrlFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    const-string v0, "VERSION"

    new-instance v1, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$VersionFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$VersionFactory;-><init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public static getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;
    .locals 1

    .prologue
    .line 963
    sget-object v0, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->instance:Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    return-object v0
.end method

.method private isExperimentalName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1014
    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "X-"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1014
    :goto_0
    return v0

    .line 1015
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 970
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getFactory(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 971
    .local v0, "factory":Lnet/fortuna/ical4j/model/PropertyFactory;
    if-eqz v0, :cond_0

    .line 972
    invoke-interface {v0, p1}, Lnet/fortuna/ical4j/model/PropertyFactory;->createProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    .line 978
    :goto_0
    return-object v1

    .line 974
    :cond_0
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->isExperimentalName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 975
    new-instance v1, Lnet/fortuna/ical4j/model/property/XProperty;

    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/property/XProperty;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 977
    :cond_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->allowIllegalNames()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 978
    new-instance v1, Lnet/fortuna/ical4j/model/property/XProperty;

    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/property/XProperty;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 981
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal property ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createProperty(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameters"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 993
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getFactory(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 994
    .local v0, "factory":Lnet/fortuna/ical4j/model/PropertyFactory;
    if-eqz v0, :cond_0

    .line 995
    invoke-interface {v0, p1, p2, p3}, Lnet/fortuna/ical4j/model/PropertyFactory;->createProperty(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    .line 1001
    :goto_0
    return-object v1

    .line 997
    :cond_0
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->isExperimentalName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 998
    new-instance v1, Lnet/fortuna/ical4j/model/property/XProperty;

    invoke-direct {v1, p1, p2, p3}, Lnet/fortuna/ical4j/model/property/XProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V

    goto :goto_0

    .line 1000
    :cond_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->allowIllegalNames()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1001
    new-instance v1, Lnet/fortuna/ical4j/model/property/XProperty;

    invoke-direct {v1, p1, p2, p3}, Lnet/fortuna/ical4j/model/property/XProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V

    goto :goto_0

    .line 1004
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal property ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
