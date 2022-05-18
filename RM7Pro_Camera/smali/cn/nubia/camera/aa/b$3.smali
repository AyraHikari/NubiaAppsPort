.class Lcn/nubia/camera/aa/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/d/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aa/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aa/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aa/b;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcn/nubia/camera/aa/b$3;->a:Lcn/nubia/camera/aa/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "LivePhoto"

    const-string v1, "onLivePhotoGenerated"

    .line 362
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 364
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_pending"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    iget-object v1, p0, Lcn/nubia/camera/aa/b$3;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v1}, Lcn/nubia/camera/aa/b;->b(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aa/b$3;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v2}, Lcn/nubia/camera/aa/b;->h(Lcn/nubia/camera/aa/b;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcn/nubia/camera/aa/b$3;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v0}, Lcn/nubia/camera/aa/b;->i(Lcn/nubia/camera/aa/b;)V

    .line 369
    iget-object v0, p0, Lcn/nubia/camera/aa/b$3;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v0}, Lcn/nubia/camera/aa/b;->j(Lcn/nubia/camera/aa/b;)V

    return-void
.end method
