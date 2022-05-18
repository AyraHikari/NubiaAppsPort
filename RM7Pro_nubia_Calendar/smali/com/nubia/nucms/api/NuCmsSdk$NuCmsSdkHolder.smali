.class Lcom/nubia/nucms/api/NuCmsSdk$NuCmsSdkHolder;
.super Ljava/lang/Object;
.source "NuCmsSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/nucms/api/NuCmsSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NuCmsSdkHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/nubia/nucms/api/NuCmsSdk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/nubia/nucms/api/NuCmsSdk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nubia/nucms/api/NuCmsSdk;-><init>(Lcom/nubia/nucms/api/NuCmsSdk$1;)V

    sput-object v0, Lcom/nubia/nucms/api/NuCmsSdk$NuCmsSdkHolder;->INSTANCE:Lcom/nubia/nucms/api/NuCmsSdk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/nubia/nucms/api/NuCmsSdk;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/nubia/nucms/api/NuCmsSdk$NuCmsSdkHolder;->INSTANCE:Lcom/nubia/nucms/api/NuCmsSdk;

    return-object v0
.end method
