.class Lb/a/c/a/e$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/c/a/e;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/c/a/e;


# direct methods
.method constructor <init>(Lb/a/c/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/e$g;->a:Lb/a/c/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/c/a/e$g;->a:Lb/a/c/a/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/a/c/a/e;->B(I)V

    return-void
.end method
