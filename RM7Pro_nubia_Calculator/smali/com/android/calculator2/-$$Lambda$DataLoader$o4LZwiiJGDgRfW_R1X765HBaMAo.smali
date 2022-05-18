.class public final synthetic Lcom/android/calculator2/-$$Lambda$DataLoader$o4LZwiiJGDgRfW_R1X765HBaMAo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/calculator2/-$$Lambda$DataLoader$o4LZwiiJGDgRfW_R1X765HBaMAo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/calculator2/-$$Lambda$DataLoader$o4LZwiiJGDgRfW_R1X765HBaMAo;

    invoke-direct {v0}, Lcom/android/calculator2/-$$Lambda$DataLoader$o4LZwiiJGDgRfW_R1X765HBaMAo;-><init>()V

    sput-object v0, Lcom/android/calculator2/-$$Lambda$DataLoader$o4LZwiiJGDgRfW_R1X765HBaMAo;->INSTANCE:Lcom/android/calculator2/-$$Lambda$DataLoader$o4LZwiiJGDgRfW_R1X765HBaMAo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p1}, Lcom/android/calculator2/DataLoader;->lambda$initPool$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
