.class Lcom/android/calculator2/ZteTrackManager$ZteTrackManagerInstance;
.super Ljava/lang/Object;
.source "ZteTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/ZteTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZteTrackManagerInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/calculator2/ZteTrackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/android/calculator2/ZteTrackManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calculator2/ZteTrackManager;-><init>(Lcom/android/calculator2/ZteTrackManager$1;)V

    sput-object v0, Lcom/android/calculator2/ZteTrackManager$ZteTrackManagerInstance;->INSTANCE:Lcom/android/calculator2/ZteTrackManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/calculator2/ZteTrackManager;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/calculator2/ZteTrackManager$ZteTrackManagerInstance;->INSTANCE:Lcom/android/calculator2/ZteTrackManager;

    return-object v0
.end method
