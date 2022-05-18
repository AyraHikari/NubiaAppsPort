.class Lc/b/a/n/i/n/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n/i/n/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/locks/Lock;

.field b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lc/b/a/n/i/n/c$b;->a:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method synthetic constructor <init>(Lc/b/a/n/i/n/c$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lc/b/a/n/i/n/c$b;-><init>()V

    return-void
.end method
