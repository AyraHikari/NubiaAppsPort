.class public final enum Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;
.super Ljava/lang/Enum;
.source "NuCmsNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/nucms/utils/NuCmsNetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

.field public static final enum Mobile_2G:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

.field public static final enum Mobile_3G:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

.field public static final enum Mobile_4G:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

.field public static final enum None:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

.field public static final enum Other:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

.field public static final enum Wifi:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 15
    new-instance v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    const-string v1, "Wifi"

    invoke-direct {v0, v1, v6, v4}, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Wifi:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    new-instance v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    const-string v1, "Mobile_2G"

    invoke-direct {v0, v1, v3, v5}, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Mobile_2G:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    new-instance v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    const-string v1, "Mobile_3G"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v4, v2}, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Mobile_3G:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    new-instance v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    const-string v1, "Mobile_4G"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v7, v2}, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Mobile_4G:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    new-instance v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    const-string v1, "Other"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v5, v2}, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Other:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    new-instance v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    const-string v1, "None"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->None:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    .line 14
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    sget-object v1, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Wifi:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Mobile_2G:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Mobile_3G:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Mobile_4G:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->Other:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    aput-object v1, v0, v5

    const/4 v1, 0x5

    sget-object v2, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->None:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->$VALUES:[Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->value:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    return-object v0
.end method

.method public static values()[Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->$VALUES:[Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    invoke-virtual {v0}, [Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    return-object v0
.end method
