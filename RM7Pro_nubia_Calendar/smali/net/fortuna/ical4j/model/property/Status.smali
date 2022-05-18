.class public Lnet/fortuna/ical4j/model/property/Status;
.super Lnet/fortuna/ical4j/model/Property;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;
    }
.end annotation


# static fields
.field public static final VEVENT_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

.field public static final VEVENT_CONFIRMED:Lnet/fortuna/ical4j/model/property/Status;

.field public static final VEVENT_TENTATIVE:Lnet/fortuna/ical4j/model/property/Status;

.field public static final VJOURNAL_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

.field public static final VJOURNAL_DRAFT:Lnet/fortuna/ical4j/model/property/Status;

.field public static final VJOURNAL_FINAL:Lnet/fortuna/ical4j/model/property/Status;

.field public static final VTODO_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

.field public static final VTODO_COMPLETED:Lnet/fortuna/ical4j/model/property/Status;

.field public static final VTODO_IN_PROCESS:Lnet/fortuna/ical4j/model/property/Status;

.field public static final VTODO_NEEDS_ACTION:Lnet/fortuna/ical4j/model/property/Status;

.field private static final serialVersionUID:J = 0x66b5ff440757292aL


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    new-instance v0, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;

    const-string v1, "TENTATIVE"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Status$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_TENTATIVE:Lnet/fortuna/ical4j/model/property/Status;

    .line 129
    new-instance v0, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;

    const-string v1, "CONFIRMED"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Status$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_CONFIRMED:Lnet/fortuna/ical4j/model/property/Status;

    .line 135
    new-instance v0, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Status$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    .line 142
    new-instance v0, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;

    const-string v1, "NEEDS-ACTION"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Status$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Status;->VTODO_NEEDS_ACTION:Lnet/fortuna/ical4j/model/property/Status;

    .line 148
    new-instance v0, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Status$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Status;->VTODO_COMPLETED:Lnet/fortuna/ical4j/model/property/Status;

    .line 154
    new-instance v0, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;

    const-string v1, "IN-PROCESS"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Status$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Status;->VTODO_IN_PROCESS:Lnet/fortuna/ical4j/model/property/Status;

    .line 160
    new-instance v0, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Status$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Status;->VTODO_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    .line 167
    new-instance v0, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;

    const-string v1, "DRAFT"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Status$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Status;->VJOURNAL_DRAFT:Lnet/fortuna/ical4j/model/property/Status;

    .line 172
    new-instance v0, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;

    const-string v1, "FINAL"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Status$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Status;->VJOURNAL_FINAL:Lnet/fortuna/ical4j/model/property/Status;

    .line 177
    new-instance v0, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Status$ImmutableStatus;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Status$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/property/Status;->VJOURNAL_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 203
    const-string v0, "STATUS"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 210
    const-string v0, "STATUS"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 211
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Status;->value:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 219
    const-string v0, "STATUS"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 220
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Status;->value:Ljava/lang/String;

    .line 221
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Status;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Status;->value:Ljava/lang/String;

    .line 228
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
    .line 242
    return-void
.end method
