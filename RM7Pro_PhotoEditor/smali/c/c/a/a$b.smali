.class public Lc/c/a/a$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lc/c/a/a$c;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "xUtils.db"

    iput-object v0, p0, Lc/c/a/a$b;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lc/c/a/a$b;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/a$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lc/c/a/a$b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/c/a/a$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/c/a/a$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lc/c/a/a$c;
    .locals 1

    iget-object v0, p0, Lc/c/a/a$b;->d:Lc/c/a/a$c;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lc/c/a/a$b;->c:I

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lc/c/a/a$b;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public g(Lc/c/a/a$c;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a$b;->d:Lc/c/a/a$c;

    return-void
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lc/c/a/a$b;->c:I

    return-void
.end method
