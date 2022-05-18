.class public final Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;
.super Lnet/fortuna/ical4j/model/PropertyFactoryImpl;
.source "PropertyFactoryRegistry.java"


# static fields
.field private static final serialVersionUID:J = 0x36780f235f19dacfL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public register(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "factory"    # Lnet/fortuna/ical4j/model/PropertyFactory;

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;->registerExtendedFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    return-void
.end method
