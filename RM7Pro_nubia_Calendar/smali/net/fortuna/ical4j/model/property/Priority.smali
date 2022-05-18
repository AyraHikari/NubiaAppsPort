.class public Lnet/fortuna/ical4j/model/property/Priority;
.super Lnet/fortuna/ical4j/model/Property;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;
    }
.end annotation


# static fields
.field public static final HIGH:Lnet/fortuna/ical4j/model/property/Priority;

.field public static final LOW:Lnet/fortuna/ical4j/model/property/Priority;

.field public static final MEDIUM:Lnet/fortuna/ical4j/model/property/Priority;

.field public static final UNDEFINED:Lnet/fortuna/ical4j/model/property/Priority;

.field private static final serialVersionUID:J = -0x4e78599890425e45L


# instance fields
.field private level:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    new-instance v0, Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;-><init>(ILnet/fortuna/ical4j/model/property/Priority$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Priority;->UNDEFINED:Lnet/fortuna/ical4j/model/property/Priority;

    .line 135
    new-instance v0, Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;-><init>(ILnet/fortuna/ical4j/model/property/Priority$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Priority;->HIGH:Lnet/fortuna/ical4j/model/property/Priority;

    .line 140
    new-instance v0, Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;-><init>(ILnet/fortuna/ical4j/model/property/Priority$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Priority;->MEDIUM:Lnet/fortuna/ical4j/model/property/Priority;

    .line 145
    new-instance v0, Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;

    const/16 v1, 0x9

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;-><init>(ILnet/fortuna/ical4j/model/property/Priority$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Priority;->LOW:Lnet/fortuna/ical4j/model/property/Priority;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "PRIORITY"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 176
    sget-object v0, Lnet/fortuna/ical4j/model/property/Priority;->UNDEFINED:Lnet/fortuna/ical4j/model/property/Priority;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Priority;->getLevel()I

    move-result v0

    iput v0, p0, Lnet/fortuna/ical4j/model/property/Priority;->level:I

    .line 177
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "aLevel"    # I

    .prologue
    .line 192
    const-string v0, "PRIORITY"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 193
    iput p1, p0, Lnet/fortuna/ical4j/model/property/Priority;->level:I

    .line 194
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;I)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aLevel"    # I

    .prologue
    .line 201
    const-string v0, "PRIORITY"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 202
    iput p2, p0, Lnet/fortuna/ical4j/model/property/Priority;->level:I

    .line 203
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string v0, "PRIORITY"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 185
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/fortuna/ical4j/model/property/Priority;->level:I

    .line 186
    return-void
.end method


# virtual methods
.method public final getLevel()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lnet/fortuna/ical4j/model/property/Priority;->level:I

    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Priority;->getLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 230
    iput p1, p0, Lnet/fortuna/ical4j/model/property/Priority;->level:I

    .line 231
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/fortuna/ical4j/model/property/Priority;->level:I

    .line 217
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
    .line 238
    return-void
.end method
