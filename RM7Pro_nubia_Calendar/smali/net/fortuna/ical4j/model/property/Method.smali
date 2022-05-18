.class public Lnet/fortuna/ical4j/model/property/Method;
.super Lnet/fortuna/ical4j/model/Property;
.source "Method.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;
    }
.end annotation


# static fields
.field public static final ADD:Lnet/fortuna/ical4j/model/property/Method;

.field public static final CANCEL:Lnet/fortuna/ical4j/model/property/Method;

.field public static final COUNTER:Lnet/fortuna/ical4j/model/property/Method;

.field public static final DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

.field public static final PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

.field public static final REFRESH:Lnet/fortuna/ical4j/model/property/Method;

.field public static final REPLY:Lnet/fortuna/ical4j/model/property/Method;

.field public static final REQUEST:Lnet/fortuna/ical4j/model/property/Method;

.field private static final serialVersionUID:J = 0x6435fdb54d3f949fL


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    new-instance v0, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;

    const-string v1, "PUBLISH"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Method$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    .line 64
    new-instance v0, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;

    const-string v1, "REQUEST"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Method$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    .line 70
    new-instance v0, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;

    const-string v1, "REPLY"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Method$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    .line 75
    new-instance v0, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Method$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    .line 80
    new-instance v0, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Method$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    .line 85
    new-instance v0, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;

    const-string v1, "REFRESH"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Method$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    .line 91
    new-instance v0, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;

    const-string v1, "COUNTER"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Method$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    .line 96
    new-instance v0, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;

    const-string v1, "DECLINE-COUNTER"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Method$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "METHOD"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 129
    const-string v0, "METHOD"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 130
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Method;->value:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 138
    const-string v0, "METHOD"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 139
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Method;->value:Ljava/lang/String;

    .line 140
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Method;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Method;->value:Ljava/lang/String;

    .line 147
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
    .line 161
    return-void
.end method
