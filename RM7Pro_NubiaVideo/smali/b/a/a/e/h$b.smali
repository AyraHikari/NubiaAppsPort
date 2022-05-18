.class Lb/a/a/e/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/e/c$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/e/h;


# direct methods
.method constructor <init>(Lb/a/a/e/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/h$b;->a:Lb/a/a/e/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/e/c;II)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Lb/a/a/e/h$b;->a:Lb/a/a/e/h;

    invoke-virtual {p1}, Lb/a/a/e/c;->n()I

    move-result p3

    invoke-static {p2, p3}, Lb/a/a/e/h;->d(Lb/a/a/e/h;I)I

    .line 2
    iget-object p2, p0, Lb/a/a/e/h$b;->a:Lb/a/a/e/h;

    invoke-virtual {p1}, Lb/a/a/e/c;->m()I

    move-result p1

    invoke-static {p2, p1}, Lb/a/a/e/h;->e(Lb/a/a/e/h;I)I

    :cond_0
    return-void
.end method
