.class public final enum Lcn/nubia/common/NetworkConnectivityListener$State;
.super Ljava/lang/Enum;
.source "NetworkConnectivityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/common/NetworkConnectivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/common/NetworkConnectivityListener$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/common/NetworkConnectivityListener$State;

.field public static final enum CONNECTED:Lcn/nubia/common/NetworkConnectivityListener$State;

.field public static final enum NOT_CONNECTED:Lcn/nubia/common/NetworkConnectivityListener$State;

.field public static final enum UNKNOWN:Lcn/nubia/common/NetworkConnectivityListener$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    new-instance v0, Lcn/nubia/common/NetworkConnectivityListener$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcn/nubia/common/NetworkConnectivityListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/common/NetworkConnectivityListener$State;->UNKNOWN:Lcn/nubia/common/NetworkConnectivityListener$State;

    .line 111
    new-instance v0, Lcn/nubia/common/NetworkConnectivityListener$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcn/nubia/common/NetworkConnectivityListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/common/NetworkConnectivityListener$State;->CONNECTED:Lcn/nubia/common/NetworkConnectivityListener$State;

    .line 121
    new-instance v0, Lcn/nubia/common/NetworkConnectivityListener$State;

    const-string v1, "NOT_CONNECTED"

    invoke-direct {v0, v1, v4}, Lcn/nubia/common/NetworkConnectivityListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/common/NetworkConnectivityListener$State;->NOT_CONNECTED:Lcn/nubia/common/NetworkConnectivityListener$State;

    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/common/NetworkConnectivityListener$State;

    sget-object v1, Lcn/nubia/common/NetworkConnectivityListener$State;->UNKNOWN:Lcn/nubia/common/NetworkConnectivityListener$State;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/common/NetworkConnectivityListener$State;->CONNECTED:Lcn/nubia/common/NetworkConnectivityListener$State;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/common/NetworkConnectivityListener$State;->NOT_CONNECTED:Lcn/nubia/common/NetworkConnectivityListener$State;

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/common/NetworkConnectivityListener$State;->$VALUES:[Lcn/nubia/common/NetworkConnectivityListener$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/common/NetworkConnectivityListener$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    const-class v0, Lcn/nubia/common/NetworkConnectivityListener$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/common/NetworkConnectivityListener$State;

    return-object v0
.end method

.method public static values()[Lcn/nubia/common/NetworkConnectivityListener$State;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcn/nubia/common/NetworkConnectivityListener$State;->$VALUES:[Lcn/nubia/common/NetworkConnectivityListener$State;

    invoke-virtual {v0}, [Lcn/nubia/common/NetworkConnectivityListener$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/common/NetworkConnectivityListener$State;

    return-object v0
.end method
