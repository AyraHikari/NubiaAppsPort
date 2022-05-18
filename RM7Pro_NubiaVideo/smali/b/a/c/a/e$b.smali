.class Lb/a/c/a/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/c/a/e;->C(Z)V
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
    iput-object p1, p0, Lb/a/c/a/e$b;->a:Lb/a/c/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public s(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/e$b;->a:Lb/a/c/a/e;

    iget-object v0, v0, Lb/a/c/a/c;->w:Lb/a/a/c/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lb/a/a/c/g;->s(I)V

    :cond_0
    return-void
.end method
