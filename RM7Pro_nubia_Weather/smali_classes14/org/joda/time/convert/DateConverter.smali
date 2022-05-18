.class final Lorg/joda/time/convert/DateConverter;
.super Lorg/joda/time/convert/AbstractConverter;
.source "DateConverter.java"

# interfaces
.implements Lorg/joda/time/convert/InstantConverter;
.implements Lorg/joda/time/convert/PartialConverter;


# static fields
.field static final INSTANCE:Lorg/joda/time/convert/DateConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/joda/time/convert/DateConverter;

    invoke-direct {v0}, Lorg/joda/time/convert/DateConverter;-><init>()V

    sput-object v0, Lorg/joda/time/convert/DateConverter;->INSTANCE:Lorg/joda/time/convert/DateConverter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/joda/time/convert/AbstractConverter;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public getInstantMillis(Ljava/lang/Object;Lorg/joda/time/Chronology;)J
    .locals 2

    .prologue
    .line 55
    check-cast p1, Ljava/util/Date;

    .line 56
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSupportedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 66
    const-class v0, Ljava/util/Date;

    return-object v0
.end method
