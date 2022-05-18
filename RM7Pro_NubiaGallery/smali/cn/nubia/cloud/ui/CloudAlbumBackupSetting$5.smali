.class Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$5;
.super Ljava/lang/Object;
.source "CloudAlbumBackupSetting.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->showAlbum(Lcn/nubia/cloud/ui/AlbumInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;

.field final synthetic val$mMergedBucketPaths:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;Ljava/util/List;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$5;->this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;

    iput-object p2, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$5;->val$mMergedBucketPaths:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 201
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$5;->this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->access$300(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$5;->val$mMergedBucketPaths:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$5;->this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->access$300(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$5;->val$mMergedBucketPaths:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 205
    :goto_0
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$5;->this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;

    const/4 p2, 0x0

    const-string v0, "CloudAblumBackupSetting"

    invoke-virtual {p1, v0, p2}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 206
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "selectedAlbums"

    .line 208
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$5;->this$0:Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;

    invoke-static {v0}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->access$300(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 211
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
