.class public abstract Lnet/fortuna/vcal4j/model/Property10;
.super Lnet/fortuna/ical4j/model/Property;
.source "Property10.java"


# static fields
.field public static final VCAL10_AALARM:Ljava/lang/String; = "AALARM"

.field public static final VCAL10_ATTENDEE:Ljava/lang/String; = "ATTENDEE"

.field public static final VCAL10_COMPLETED:Ljava/lang/String; = "COMPLETED"

.field public static final VCAL10_DALARM:Ljava/lang/String; = "DALARM"

.field public static final VCAL10_DESCRIPTION:Ljava/lang/String; = "DESCRIPTION"

.field public static final VCAL10_DTEND:Ljava/lang/String; = "DTEND"

.field public static final VCAL10_DTSTART:Ljava/lang/String; = "DTSTART"

.field public static final VCAL10_DUE:Ljava/lang/String; = "DUE"

.field public static final VCAL10_DURATION:Ljava/lang/String; = "DURATION"

.field public static final VCAL10_LAST_MODIFIED:Ljava/lang/String; = "LAST-MODIFIED"

.field public static final VCAL10_LOCATION:Ljava/lang/String; = "LOCATION"

.field public static final VCAL10_RRULE:Ljava/lang/String; = "RRULE"

.field public static final VCAL10_SUMMARY:Ljava/lang/String; = "SUMMARY"

.field public static final VCAL10_TZ:Ljava/lang/String; = "TZ"

.field public static final VCAL10_UID:Ljava/lang/String; = "UID"

.field public static final VCAL10_VERSION:Ljava/lang/String; = "VERSION"

.field private static final serialVersionUID:J = 0x61d2511e8c75386fL


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 0
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p3, "factory"    # Lnet/fortuna/ical4j/model/PropertyFactory;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 13
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 1
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "factory"    # Lnet/fortuna/ical4j/model/PropertyFactory;

    .prologue
    .line 16
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ParameterList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lnet/fortuna/vcal4j/model/Property10;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 17
    return-void
.end method
