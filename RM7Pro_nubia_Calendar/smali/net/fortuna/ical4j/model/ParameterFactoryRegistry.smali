.class public final Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;
.super Lnet/fortuna/ical4j/model/ParameterFactoryImpl;
.source "ParameterFactoryRegistry.java"


# static fields
.field private static final serialVersionUID:J = -0x2ecce79fe6ec377fL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public register(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "factory"    # Lnet/fortuna/ical4j/model/ParameterFactory;

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;->registerExtendedFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    return-void
.end method
