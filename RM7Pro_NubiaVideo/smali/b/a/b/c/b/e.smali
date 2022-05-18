.class abstract Lb/a/b/c/b/e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lb/a/b/c/b/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/a/b/c/b/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lb/a/b/c/b/e;->b:Lb/a/b/c/b/f;

    .line 3
    iput-object p1, p0, Lb/a/b/c/b/e;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/e;->b:Lb/a/b/c/b/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lb/a/b/c/b/f;->J()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/e;->b:Lb/a/b/c/b/f;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lb/a/b/c/b/f;->x(I)Lb/a/b/c/b/m;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method
