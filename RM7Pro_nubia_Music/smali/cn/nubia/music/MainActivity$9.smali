.class Lcn/nubia/music/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MainActivity;->initSpData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/MainActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/MainActivity;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcn/nubia/music/MainActivity$9;->a:Lcn/nubia/music/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 553
    const-string v0, "autoGetInfo"

    invoke-static {v2, v0, v3}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 554
    const-string v0, "autoGetInfo"

    invoke-static {v2, v0, v4}, Lcn/nubia/music/utils/SharedPrefersHelper;->putInt(ILjava/lang/String;I)V

    .line 556
    :cond_0
    const-string v0, "download_path"

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lcn/nubia/music/utils/SharedPrefersHelper;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 557
    iget-object v0, p0, Lcn/nubia/music/MainActivity$9;->a:Lcn/nubia/music/MainActivity;

    invoke-static {v0}, Lcn/nubia/music/MainActivity;->access$400(Lcn/nubia/music/MainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/app/download/PathManager;->getInstance(Landroid/content/Context;)Lcn/nubia/music/app/download/PathManager;

    move-result-object v0

    sget-object v1, Lcn/nubia/music/app/download/PathManager$PathTag;->SONGS:Lcn/nubia/music/app/download/PathManager$PathTag;

    invoke-virtual {v0, v1}, Lcn/nubia/music/app/download/PathManager;->getCachePath(Lcn/nubia/music/app/download/PathManager$PathTag;)Ljava/lang/String;

    move-result-object v0

    .line 558
    const-string v1, "download_path"

    invoke-static {v2, v1, v0}, Lcn/nubia/music/utils/SharedPrefersHelper;->putString(ILjava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_1
    const-string v0, "time_filter"

    invoke-static {v2, v0, v3}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 561
    const-string v0, "time_filter"

    invoke-static {v2, v0, v4}, Lcn/nubia/music/utils/SharedPrefersHelper;->putInt(ILjava/lang/String;I)V

    .line 564
    :cond_2
    const-string v0, "type_filter"

    invoke-static {v2, v0, v3}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 565
    const-string v0, "type_filter"

    invoke-static {v2, v0, v4}, Lcn/nubia/music/utils/SharedPrefersHelper;->putInt(ILjava/lang/String;I)V

    .line 568
    :cond_3
    const-string v0, "size_filter"

    invoke-static {v2, v0, v3}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 569
    const-string v0, "size_filter"

    invoke-static {v2, v0, v4}, Lcn/nubia/music/utils/SharedPrefersHelper;->putInt(ILjava/lang/String;I)V

    .line 571
    :cond_4
    return-void
.end method
