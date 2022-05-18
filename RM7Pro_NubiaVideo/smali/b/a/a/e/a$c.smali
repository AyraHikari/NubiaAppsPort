.class Lb/a/a/e/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/e/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/e/a;


# direct methods
.method constructor <init>(Lb/a/a/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/a$c;->a:Lb/a/a/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/e/b;II)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lb/a/a/e/a$c;->a:Lb/a/a/e/a;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lb/a/a/e/a;->b(Lb/a/a/e/a;I)I

    .line 2
    iget-object p1, p0, Lb/a/a/e/a$c;->a:Lb/a/a/e/a;

    invoke-static {p1}, Lb/a/a/e/a;->d(Lb/a/a/e/a;)Lb/a/a/e/f;

    move-result-object p1

    iget-object p2, p0, Lb/a/a/e/a$c;->a:Lb/a/a/e/a;

    invoke-static {p2}, Lb/a/a/e/a;->a(Lb/a/a/e/a;)I

    move-result p2

    invoke-interface {p1, p2}, Lb/a/a/e/f;->a(I)V

    const/4 p1, 0x1

    return p1
.end method
