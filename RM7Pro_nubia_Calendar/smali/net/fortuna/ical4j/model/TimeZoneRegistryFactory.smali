.class public abstract Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;
.super Ljava/lang/Object;
.source "TimeZoneRegistryFactory.java"


# static fields
.field public static final KEY_FACTORY_CLASS:Ljava/lang/String; = "net.fortuna.ical4j.timezone.registry"

.field private static instance:Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    :try_start_0
    const-string v2, "net.fortuna.ical4j.timezone.registry"

    invoke-static {v2}, Lnet/fortuna/ical4j/util/Configurator;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 59
    .local v1, "factoryClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;

    sput-object v2, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;->instance:Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lnet/fortuna/ical4j/model/DefaultTimeZoneRegistryFactory;

    invoke-direct {v2}, Lnet/fortuna/ical4j/model/DefaultTimeZoneRegistryFactory;-><init>()V

    sput-object v2, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;->instance:Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;->instance:Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;

    return-object v0
.end method


# virtual methods
.method public abstract createRegistry()Lnet/fortuna/ical4j/model/TimeZoneRegistry;
.end method
