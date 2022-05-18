.class public Lnet/fortuna/ical4j/model/property/Action;
.super Lnet/fortuna/ical4j/model/Property;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/Action$ImmutableAction;
    }
.end annotation


# static fields
.field public static final AUDIO:Lnet/fortuna/ical4j/model/property/Action;

.field public static final DISPLAY:Lnet/fortuna/ical4j/model/property/Action;

.field public static final EMAIL:Lnet/fortuna/ical4j/model/property/Action;

.field public static final PROCEDURE:Lnet/fortuna/ical4j/model/property/Action;

.field private static final serialVersionUID:J = -0x20a8cad8f155a8f0L


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    new-instance v0, Lnet/fortuna/ical4j/model/property/Action$ImmutableAction;

    const-string v1, "AUDIO"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Action$ImmutableAction;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Action$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Action;->AUDIO:Lnet/fortuna/ical4j/model/property/Action;

    .line 59
    new-instance v0, Lnet/fortuna/ical4j/model/property/Action$ImmutableAction;

    const-string v1, "DISPLAY"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Action$ImmutableAction;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Action$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Action;->DISPLAY:Lnet/fortuna/ical4j/model/property/Action;

    .line 64
    new-instance v0, Lnet/fortuna/ical4j/model/property/Action$ImmutableAction;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Action$ImmutableAction;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Action$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Action;->EMAIL:Lnet/fortuna/ical4j/model/property/Action;

    .line 69
    new-instance v0, Lnet/fortuna/ical4j/model/property/Action$ImmutableAction;

    const-string v1, "PROCEDURE"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Action$ImmutableAction;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Action$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Action;->PROCEDURE:Lnet/fortuna/ical4j/model/property/Action;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "ACTION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v0, "ACTION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 108
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Action;->value:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v0, "ACTION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 117
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Action;->value:Ljava/lang/String;

    .line 118
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Action;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Action;->value:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public final validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 139
    return-void
.end method
