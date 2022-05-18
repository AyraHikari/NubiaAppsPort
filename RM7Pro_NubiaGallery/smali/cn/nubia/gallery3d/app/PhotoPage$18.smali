.class Lcn/nubia/gallery3d/app/PhotoPage$18;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/PhotoPage;->SetAsPrivate(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoPage;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$path_list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/PhotoPage;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0

    .line 1329
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$18;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage$18;->val$path_list:Ljava/util/ArrayList;

    iput-object p3, p0, Lcn/nubia/gallery3d/app/PhotoPage$18;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1333
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1334
    sget-object p2, Lcn/nubia/gallery3d/util/GalleryUtils;->PRIVACY_ACTION:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "files"

    .line 1335
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$18;->val$path_list:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1336
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage$18;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "PhotoPage"

    const-string v0, "set privacy error!"

    .line 1338
    invoke-static {p2, v0}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
