.class public abstract Lnet/fortuna/ical4j/util/EncoderFactory;
.super Ljava/lang/Object;
.source "EncoderFactory.java"


# static fields
.field public static final KEY_FACTORY_CLASS:Ljava/lang/String; = "net.fortuna.ical4j.factory.encoder"

.field private static instance:Lnet/fortuna/ical4j/util/EncoderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    :try_start_0
    const-string v2, "net.fortuna.ical4j.factory.encoder"

    invoke-static {v2}, Lnet/fortuna/ical4j/util/Configurator;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 62
    .local v1, "factoryClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/util/EncoderFactory;

    sput-object v2, Lnet/fortuna/ical4j/util/EncoderFactory;->instance:Lnet/fortuna/ical4j/util/EncoderFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lnet/fortuna/ical4j/util/DefaultEncoderFactory;

    invoke-direct {v2}, Lnet/fortuna/ical4j/util/DefaultEncoderFactory;-><init>()V

    sput-object v2, Lnet/fortuna/ical4j/util/EncoderFactory;->instance:Lnet/fortuna/ical4j/util/EncoderFactory;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lnet/fortuna/ical4j/util/EncoderFactory;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lnet/fortuna/ical4j/util/EncoderFactory;->instance:Lnet/fortuna/ical4j/util/EncoderFactory;

    return-object v0
.end method


# virtual methods
.method public abstract createBinaryEncoder(Lnet/fortuna/ical4j/model/parameter/Encoding;)Lorg/apache/commons/codec/BinaryEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract createStringEncoder(Lnet/fortuna/ical4j/model/parameter/Encoding;)Lorg/apache/commons/codec/StringEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method
