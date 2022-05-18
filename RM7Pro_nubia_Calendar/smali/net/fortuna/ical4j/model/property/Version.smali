.class public Lnet/fortuna/ical4j/model/property/Version;
.super Lnet/fortuna/ical4j/model/Property;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/Version$ImmutableVersion;
    }
.end annotation


# static fields
.field public static final VERSION_1_0:Lnet/fortuna/ical4j/model/property/Version;

.field public static final VERSION_2_0:Lnet/fortuna/ical4j/model/property/Version;

.field private static final serialVersionUID:J = 0x7b217b1422beebd8L


# instance fields
.field private maxVersion:Ljava/lang/String;

.field private minVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    new-instance v0, Lnet/fortuna/ical4j/model/property/Version$ImmutableVersion;

    const-string v1, "2.0"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Version$ImmutableVersion;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Version$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Version;->VERSION_2_0:Lnet/fortuna/ical4j/model/property/Version;

    .line 63
    new-instance v0, Lnet/fortuna/ical4j/model/property/Version$ImmutableVersion;

    const-string v1, "1.0"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Version$ImmutableVersion;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Version$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Version;->VERSION_1_0:Lnet/fortuna/ical4j/model/property/Version;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "VERSION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "minVersion"    # Ljava/lang/String;
    .param p2, "maxVersion"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string v0, "VERSION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 124
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Version;->minVersion:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Version;->maxVersion:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 3
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x3b

    .line 108
    const-string v0, "VERSION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 109
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Version;->minVersion:Ljava/lang/String;

    .line 111
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Version;->maxVersion:Ljava/lang/String;

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Version;->maxVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aVersion1"    # Ljava/lang/String;
    .param p3, "aVersion2"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string v0, "VERSION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 136
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Version;->minVersion:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lnet/fortuna/ical4j/model/property/Version;->maxVersion:Ljava/lang/String;

    .line 138
    return-void
.end method


# virtual methods
.method public final getMaxVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Version;->maxVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getMinVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Version;->minVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Version;->getMinVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Version;->getMinVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Version;->getMaxVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 178
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Version;->getMaxVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Version;->getMaxVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setMaxVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "maxVersion"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Version;->maxVersion:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setMinVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "minVersion"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Version;->minVersion:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x3b

    .line 158
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Version;->minVersion:Ljava/lang/String;

    .line 160
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Version;->maxVersion:Ljava/lang/String;

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Version;->maxVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public final validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 203
    return-void
.end method
