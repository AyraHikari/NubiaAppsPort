.class Lcn/nubia/music/app/menu/MusicListActionModManager$1;
.super Ljava/lang/Object;
.source "MusicListActionModManager.java"

# interfaces
.implements Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/menu/MusicListActionModManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/app/menu/MusicListActionModManager;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/menu/MusicListActionModManager;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActionItemClicked--->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 130
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 247
    :goto_0
    return v0

    .line 132
    :sswitch_0
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v2

    const-string v3, "add_to_playlist"

    invoke-interface {v2, v3}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->doUmengCallback(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->getCheckedItemIds()[J

    move-result-object v2

    .line 134
    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_1

    .line 135
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    move v0, v1

    .line 136
    goto :goto_0

    .line 140
    :cond_1
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v1

    invoke-interface {v1, v2}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->getAudioIdlist([J)[J

    move-result-object v1

    .line 141
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 142
    iget-object v3, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v3}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$300(Lcn/nubia/music/app/menu/MusicListActionModManager;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 143
    const-string v3, "audioslist"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$300(Lcn/nubia/music/app/menu/MusicListActionModManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    goto :goto_0

    .line 148
    :sswitch_1
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v2

    const-string v3, "fav_music"

    invoke-interface {v2, v3}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->doUmengCallback(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->getCheckedItemIds()[J

    move-result-object v2

    .line 150
    if-eqz v2, :cond_2

    array-length v3, v2

    if-nez v3, :cond_3

    .line 151
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    move v0, v1

    .line 152
    goto :goto_0

    .line 157
    :cond_3
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v1

    invoke-interface {v1, v2}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->getAudioIdlist([J)[J

    move-result-object v1

    .line 159
    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->isListInFavoList([J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 160
    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->removeListFromFavoList([J)V

    .line 161
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    const v2, 0x7f0b0067

    invoke-static {v1, v2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$400(Lcn/nubia/music/app/menu/MusicListActionModManager;I)V

    .line 166
    :goto_1
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    goto/16 :goto_0

    .line 163
    :cond_4
    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->addToPlayFavorite([J)V

    .line 164
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    const v2, 0x7f0b0068

    invoke-static {v1, v2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$400(Lcn/nubia/music/app/menu/MusicListActionModManager;I)V

    goto :goto_1

    .line 173
    :sswitch_2
    new-instance v1, Lcn/nubia/music/dialog/CreatePlaylistDialog;

    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$300(Lcn/nubia/music/app/menu/MusicListActionModManager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/music/dialog/CreatePlaylistDialog;-><init>(Landroid/content/Context;)V

    .line 174
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v1, v2}, Lcn/nubia/music/dialog/CreatePlaylistDialog;->setCallback(Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;)V

    .line 175
    invoke-virtual {v1}, Lcn/nubia/music/dialog/CreatePlaylistDialog;->show()V

    .line 176
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    goto/16 :goto_0

    .line 181
    :sswitch_3
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->getCheckedItemIds()[J

    move-result-object v2

    .line 182
    if-eqz v2, :cond_5

    array-length v3, v2

    if-nez v3, :cond_6

    .line 183
    :cond_5
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    move v0, v1

    .line 184
    goto/16 :goto_0

    .line 187
    :cond_6
    invoke-interface {p2}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "playlist"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 189
    iget-object v3, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v3}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->getAudioIdlist([J)[J

    move-result-object v2

    .line 191
    if-nez v2, :cond_7

    .line 192
    const-string v0, "ADD_FAVORITE ERROR"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    move v0, v1

    .line 194
    goto/16 :goto_0

    .line 197
    :cond_7
    invoke-static {v4, v5, v2}, Lcn/nubia/music/utils/MusicUtils;->isInPlayList(J[J)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 198
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    const v2, 0x7f0b0007

    invoke-static {v1, v2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$400(Lcn/nubia/music/app/menu/MusicListActionModManager;I)V

    .line 203
    :goto_2
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    goto/16 :goto_0

    .line 200
    :cond_8
    invoke-static {v2, v4, v5}, Lcn/nubia/music/utils/MusicUtils;->addToPlaylist([JJ)V

    .line 201
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    const v2, 0x7f0b0008

    invoke-static {v1, v2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$400(Lcn/nubia/music/app/menu/MusicListActionModManager;I)V

    goto :goto_2

    .line 208
    :sswitch_4
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v2

    const-string v3, "delete_music"

    invoke-interface {v2, v3}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->doUmengCallback(Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->getCheckedItemIds()[J

    move-result-object v2

    .line 210
    if-eqz v2, :cond_9

    array-length v3, v2

    if-nez v3, :cond_a

    .line 211
    :cond_9
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    move v0, v1

    .line 212
    goto/16 :goto_0

    .line 214
    :cond_a
    iget-object v3, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v3}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->removeItem([JZ)V

    .line 215
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    goto/16 :goto_0

    .line 219
    :sswitch_5
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v1, p1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$500(Lcn/nubia/music/app/menu/MusicListActionModManager;Lcn/nubia/commonui/actionbar/view/ActionMode;)I

    move-result v1

    .line 220
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v2, v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$600(Lcn/nubia/music/app/menu/MusicListActionModManager;I)V

    goto/16 :goto_0

    .line 223
    :sswitch_6
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v2

    const-string v3, "add_to_playing"

    invoke-interface {v2, v3}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->doUmengCallback(Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v2

    if-nez v2, :cond_b

    .line 225
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    move v0, v1

    .line 226
    goto/16 :goto_0

    .line 229
    :cond_b
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->getCheckedItemIds()[J

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->getAudioIdlist([J)[J

    move-result-object v1

    .line 230
    new-instance v2, Lcn/nubia/music/app/menu/MusicListActionModManager$1$1;

    invoke-direct {v2, p0, v1}, Lcn/nubia/music/app/menu/MusicListActionModManager$1$1;-><init>(Lcn/nubia/music/app/menu/MusicListActionModManager$1;[J)V

    invoke-static {v2}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 235
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->exitActionMode()V

    goto/16 :goto_0

    .line 238
    :sswitch_7
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->showActionbarMorePopup()V

    goto/16 :goto_0

    .line 241
    :sswitch_8
    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$700(Lcn/nubia/music/app/menu/MusicListActionModManager;)V

    goto/16 :goto_0

    .line 130
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_8
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0xa -> :sswitch_5
        0xe -> :sswitch_4
        0x10 -> :sswitch_1
        0x19 -> :sswitch_7
        0x1a -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v0, p1, p2}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$000(Lcn/nubia/music/app/menu/MusicListActionModManager;Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)V

    .line 110
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$100(Lcn/nubia/music/app/menu/MusicListActionModManager;)V

    .line 111
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z

    .line 114
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)Z

    .line 255
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$802(Lcn/nubia/music/app/menu/MusicListActionModManager;Z)Z

    .line 256
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$902(Lcn/nubia/music/app/menu/MusicListActionModManager;Lcn/nubia/commonui/actionbar/view/ActionMode;)Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 257
    return-void
.end method

.method public onPrepareActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$200(Lcn/nubia/music/app/menu/MusicListActionModManager;)Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/nubia/music/app/menu/MusicListActionModManager$ActionModeListener;->onPrepareActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z

    .line 122
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
