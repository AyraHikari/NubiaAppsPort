.class public Lnet/fortuna/ical4j/model/property/Clazz;
.super Lnet/fortuna/ical4j/model/Property;
.source "Clazz.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/Clazz$ImmutableClazz;
    }
.end annotation


# static fields
.field public static final CONFIDENTIAL:Lnet/fortuna/ical4j/model/property/Clazz;

.field public static final PRIVATE:Lnet/fortuna/ical4j/model/property/Clazz;

.field public static final PUBLIC:Lnet/fortuna/ical4j/model/property/Clazz;

.field private static final serialVersionUID:J = 0x448e34911f8259f9L


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    new-instance v0, Lnet/fortuna/ical4j/model/property/Clazz$ImmutableClazz;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Clazz$ImmutableClazz;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Clazz$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Clazz;->PUBLIC:Lnet/fortuna/ical4j/model/property/Clazz;

    .line 106
    new-instance v0, Lnet/fortuna/ical4j/model/property/Clazz$ImmutableClazz;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Clazz$ImmutableClazz;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Clazz$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Clazz;->PRIVATE:Lnet/fortuna/ical4j/model/property/Clazz;

    .line 111
    new-instance v0, Lnet/fortuna/ical4j/model/property/Clazz$ImmutableClazz;

    const-string v1, "CONFIDENTIAL"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Clazz$ImmutableClazz;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Clazz$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Clazz;->CONFIDENTIAL:Lnet/fortuna/ical4j/model/property/Clazz;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "CLASS"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string v0, "CLASS"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 150
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Clazz;->value:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string v0, "CLASS"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 159
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Clazz;->value:Ljava/lang/String;

    .line 160
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Clazz;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Clazz;->value:Ljava/lang/String;

    .line 167
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
    .line 181
    return-void
.end method
