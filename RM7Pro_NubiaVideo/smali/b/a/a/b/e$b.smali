.class Lb/a/a/b/e$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/b/e;


# direct methods
.method private constructor <init>(Lb/a/a/b/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/b/e$b;->a:Lb/a/a/b/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/a/b/e;Lb/a/a/b/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/a/a/b/e$b;-><init>(Lb/a/a/b/e;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/b/e$b;->a:Lb/a/a/b/e;

    invoke-static {v0}, Lb/a/a/b/e;->a(Lb/a/a/b/e;)V

    return-void
.end method
