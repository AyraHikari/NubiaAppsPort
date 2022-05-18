.class Lcn/nubia/choosephoto/ChooseActivity$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/choosephoto/ChooseActivity;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/choosephoto/ChooseActivity;


# direct methods
.method constructor <init>(Lcn/nubia/choosephoto/ChooseActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$f;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity$f;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "datetaken DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChooseActivity queryImages size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChooseActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/collage/m;->k(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lcn/nubia/collage/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcn/nubia/choosephoto/a;

    invoke-direct {v6, v5}, Lcn/nubia/choosephoto/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcn/nubia/choosephoto/a;->a()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v6, v4}, Lcn/nubia/choosephoto/a;->f(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/nubia/choosephoto/ChooseActivity$f;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {v4}, Lcn/nubia/choosephoto/ChooseActivity;->h(Lcn/nubia/choosephoto/ChooseActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcn/nubia/choosephoto/a;->a()I

    move-result v4

    if-le v4, v3, :cond_0

    invoke-virtual {v6}, Lcn/nubia/choosephoto/a;->a()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/choosephoto/ChooseActivity$f;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {v4, v6}, Lcn/nubia/choosephoto/ChooseActivity;->i(Lcn/nubia/choosephoto/ChooseActivity;Lcn/nubia/choosephoto/a;)Lcn/nubia/choosephoto/a;

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity$f;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {v0}, Lcn/nubia/choosephoto/ChooseActivity;->j(Lcn/nubia/choosephoto/ChooseActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
