.class Lcom/nubia/nucms/api/CacheManager$Holder;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/nucms/api/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/nubia/nucms/api/CacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/nubia/nucms/api/CacheManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nubia/nucms/api/CacheManager;-><init>(Lcom/nubia/nucms/api/CacheManager$1;)V

    sput-object v0, Lcom/nubia/nucms/api/CacheManager$Holder;->INSTANCE:Lcom/nubia/nucms/api/CacheManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/nubia/nucms/api/CacheManager;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/nubia/nucms/api/CacheManager$Holder;->INSTANCE:Lcom/nubia/nucms/api/CacheManager;

    return-object v0
.end method
