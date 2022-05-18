.class public Lcom/zte/camera/ui/b/c/a/e$a;
.super Lcom/zte/camera/ui/b/c/a/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/ui/b/c/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/zte/camera/ui/b/c/a/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/zte/camera/ui/b/c/a/c;
    .locals 2

    .line 24
    new-instance v0, Lcom/zte/camera/ui/b/c/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zte/camera/ui/b/c/a/e;-><init>(Lcom/zte/camera/ui/b/c/a/e$1;)V

    return-object v0
.end method
