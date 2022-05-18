.class Lcn/nubia/camera/multiRecord/l$a;
.super Lcn/nubia/b/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/multiRecord/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/multiRecord/l;

.field private b:I


# direct methods
.method public constructor <init>(Lcn/nubia/camera/multiRecord/l;I)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/l$a;->a:Lcn/nubia/camera/multiRecord/l;

    invoke-direct {p0}, Lcn/nubia/b/a$c;-><init>()V

    .line 158
    iput p2, p0, Lcn/nubia/camera/multiRecord/l$a;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 189
    invoke-super {p0}, Lcn/nubia/b/a$c;->a()V

    const-string v0, "MultiRecordStreamController"

    const-string v1, "config sub session has been cancelled"

    .line 190
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcn/nubia/b/a;)V
    .locals 7

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l$a;->a:Lcn/nubia/camera/multiRecord/l;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/l;->a(Lcn/nubia/camera/multiRecord/l;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/l$a;->a:Lcn/nubia/camera/multiRecord/l;

    invoke-static {v1}, Lcn/nubia/camera/multiRecord/l;->b(Lcn/nubia/camera/multiRecord/l;)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/multiRecord/l$a;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " capturesession success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiRecordStreamController"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l$a;->a:Lcn/nubia/camera/multiRecord/l;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/l;->c(Lcn/nubia/camera/multiRecord/l;)[Lcn/nubia/b/a;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/multiRecord/l$a;->b:I

    aput-object p1, v0, v1

    .line 168
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/l$a;->a:Lcn/nubia/camera/multiRecord/l;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/l;->d(Lcn/nubia/camera/multiRecord/l;)V

    .line 171
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/l$a;->a:Lcn/nubia/camera/multiRecord/l;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/l;->e(Lcn/nubia/camera/multiRecord/l;)[Lcn/nubia/camera/k/y;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/multiRecord/l$a;->b:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->a()Z

    .line 173
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/l$a;->a:Lcn/nubia/camera/multiRecord/l;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/l;->f(Lcn/nubia/camera/multiRecord/l;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 176
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/l$a;->a:Lcn/nubia/camera/multiRecord/l;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/l;->g(Lcn/nubia/camera/multiRecord/l;)[Lcn/nubia/b/d;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/multiRecord/l$a;->b:I

    aget-object p1, p1, v0

    if-eqz p1, :cond_2

    .line 177
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/l$a;->a:Lcn/nubia/camera/multiRecord/l;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/l;->e(Lcn/nubia/camera/multiRecord/l;)[Lcn/nubia/camera/k/y;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/multiRecord/l$a;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lcn/nubia/b/m;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/l$a;->a:Lcn/nubia/camera/multiRecord/l;

    invoke-static {v5}, Lcn/nubia/camera/multiRecord/l;->h(Lcn/nubia/camera/multiRecord/l;)[Lcn/nubia/b/n;

    move-result-object v5

    iget v6, p0, Lcn/nubia/camera/multiRecord/l$a;->b:I

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Lcn/nubia/camera/multiRecord/l;->a(Lcn/nubia/camera/multiRecord/l;ILcn/nubia/camera/k/ad;I[Lcn/nubia/b/m;)V

    .line 179
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/l$a;->a:Lcn/nubia/camera/multiRecord/l;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/l;->i(Lcn/nubia/camera/multiRecord/l;)V

    return-void
.end method

.method public b(Lcn/nubia/b/a;)V
    .locals 2

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create sub "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l$a;->a:Lcn/nubia/camera/multiRecord/l;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/l;->b(Lcn/nubia/camera/multiRecord/l;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/multiRecord/l$a;->b:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " capturesession failed: mCameraDeviceProxy: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l$a;->a:Lcn/nubia/camera/multiRecord/l;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/l;->g(Lcn/nubia/camera/multiRecord/l;)[Lcn/nubia/b/d;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/multiRecord/l$a;->b:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiRecordStreamController"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
