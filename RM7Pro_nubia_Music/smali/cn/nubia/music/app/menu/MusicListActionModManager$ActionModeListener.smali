.class public interface abstract Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;
.super Ljava/lang/Object;
.source "MusicListActionModManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/menu/MusicListActionModManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionModeListener"
.end annotation


# virtual methods
.method public abstract createOrRenameSuccess(Landroid/content/Intent;)V
.end method

.method public abstract doUmengCallback(Ljava/lang/String;)V
.end method

.method public abstract getAudioIdlist([J)[J
.end method

.method public abstract getCheckedItemCount()I
.end method

.method public abstract getCheckedItemIds()[J
.end method

.method public abstract getListView()Landroid/widget/ListView;
.end method

.method public abstract getMusicModel(J)Lcn/nubia/music/online/model/MusicModel;
.end method

.method public abstract onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
.end method

.method public abstract onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)Z
.end method

.method public abstract onPrepareActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
.end method

.method public abstract removeItem([JZ)V
.end method

.method public abstract selectAllorNone(Landroid/widget/CheckedTextView;)V
.end method

.method public abstract setFavoriteButton(Landroid/view/MenuItem;[J)V
.end method

.method public abstract startActivityForresult(Landroid/content/Intent;I)V
.end method
