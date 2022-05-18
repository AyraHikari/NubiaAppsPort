.class Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;
.super Landroid/content/BroadcastReceiver;
.source "NotePadWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# instance fields
.field mContext:Landroid/content/Context;

.field private mNoteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;",
            ">;"
        }
    .end annotation
.end field

.field private mNotesData:Lcn/nubia/notepad/utils/NotesData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    .line 36
    iput-object p1, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lcn/nubia/notepad/utils/NotesData;

    invoke-direct {v0, p1}, Lcn/nubia/notepad/utils/NotesData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    .line 38
    iget-object v0, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    const-string v1, ""

    iget-object v2, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/notepad/utils/Util;->isSingleReverseOpen(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/utils/NotesData;->getNotesData(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mNoteList:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method private showSingleLineTitle(Landroid/widget/RemoteViews;Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;Ljava/lang/String;)V
    .locals 10
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "note"    # Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 194
    const v6, 0x7f0f0109

    const/16 v7, 0x8

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 196
    const v6, 0x7f0f010a

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 199
    const v6, 0x7f0f010b

    invoke-virtual {p1, v6, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 201
    iget-object v6, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget-wide v8, p2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    invoke-static {v6, v8, v9}, Lcn/nubia/notepad/utils/Util;->getDateStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "dateStr":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00a6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 204
    iget-object v6, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget-wide v8, p2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    invoke-static {v6, v8, v9}, Lcn/nubia/notepad/utils/Util;->getTimeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_0
    const v6, 0x7f0f010c

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 209
    iget-boolean v5, p2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRemind:Z

    .line 210
    .local v5, "isRemind":Z
    iget-boolean v4, p2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRecord:Z

    .line 211
    .local v4, "isRecord":Z
    iget-boolean v3, p2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isImage:Z

    .line 212
    .local v3, "isImage":Z
    iget v6, p2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    const/4 v1, 0x1

    .line 213
    .local v1, "isChecklist":Z
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v2, 0x1

    .line 214
    .local v2, "isDate":Z
    :goto_1
    if-nez v5, :cond_1

    if-nez v4, :cond_1

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 215
    :cond_1
    if-eqz v5, :cond_5

    .line 216
    const v6, 0x7f0f010d

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 224
    :goto_2
    if-eqz v3, :cond_6

    .line 225
    const v6, 0x7f0f010e

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 234
    :goto_3
    if-eqz v4, :cond_7

    .line 238
    const v6, 0x7f0f010f

    const-string v7, "setVisibility"

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 245
    :goto_4
    if-eqz v1, :cond_8

    .line 246
    const v6, 0x7f0f0110

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 255
    :cond_2
    :goto_5
    return-void

    .line 212
    .end local v1    # "isChecklist":Z
    .end local v2    # "isDate":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 213
    .restart local v1    # "isChecklist":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 220
    .restart local v2    # "isDate":Z
    :cond_5
    const v6, 0x7f0f010d

    const/16 v7, 0x8

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2

    .line 229
    :cond_6
    const v6, 0x7f0f010e

    const/16 v7, 0x8

    .line 230
    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    .line 241
    :cond_7
    const v6, 0x7f0f010f

    const/16 v7, 0x8

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4

    .line 250
    :cond_8
    const v6, 0x7f0f0110

    const/16 v7, 0x8

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_5
.end method

.method private showTwoLineTitle(Landroid/widget/RemoteViews;Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;Ljava/lang/String;)V
    .locals 10
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "note"    # Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 123
    const v6, 0x7f0f0109

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 125
    const v6, 0x7f0f010a

    const/16 v7, 0x8

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 128
    const v6, 0x7f0f0111

    invoke-virtual {p1, v6, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 130
    iget-object v6, p2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->secondTitle:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 131
    const v6, 0x7f0f0112

    iget-object v7, p2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->secondTitle:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 132
    const v6, 0x7f0f0112

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 138
    :goto_0
    iget-object v6, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget-wide v8, p2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    invoke-static {v6, v8, v9}, Lcn/nubia/notepad/utils/Util;->getDateStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "dateStr":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00a6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    iget-object v6, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget-wide v8, p2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    invoke-static {v6, v8, v9}, Lcn/nubia/notepad/utils/Util;->getTimeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_0
    const v6, 0x7f0f0113

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 146
    iget-boolean v5, p2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRemind:Z

    .line 147
    .local v5, "isRemind":Z
    iget-boolean v4, p2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRecord:Z

    .line 148
    .local v4, "isRecord":Z
    iget-boolean v3, p2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isImage:Z

    .line 149
    .local v3, "isImage":Z
    iget v6, p2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    const/4 v1, 0x1

    .line 150
    .local v1, "isChecklist":Z
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v2, 0x1

    .line 151
    .local v2, "isDate":Z
    :goto_2
    if-nez v5, :cond_1

    if-nez v4, :cond_1

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 152
    :cond_1
    if-eqz v5, :cond_6

    .line 153
    const v6, 0x7f0f0114

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 161
    :goto_3
    if-eqz v3, :cond_7

    .line 162
    const v6, 0x7f0f0115

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 171
    :goto_4
    if-eqz v4, :cond_8

    .line 172
    const v6, 0x7f0f0116

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 180
    :goto_5
    if-eqz v1, :cond_9

    .line 181
    const v6, 0x7f0f0117

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 191
    :cond_2
    :goto_6
    return-void

    .line 135
    .end local v0    # "dateStr":Ljava/lang/String;
    .end local v1    # "isChecklist":Z
    .end local v2    # "isDate":Z
    .end local v3    # "isImage":Z
    .end local v4    # "isRecord":Z
    .end local v5    # "isRemind":Z
    :cond_3
    const v6, 0x7f0f0112

    const/16 v7, 0x8

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 149
    .restart local v0    # "dateStr":Ljava/lang/String;
    .restart local v3    # "isImage":Z
    .restart local v4    # "isRecord":Z
    .restart local v5    # "isRemind":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 150
    .restart local v1    # "isChecklist":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 157
    .restart local v2    # "isDate":Z
    :cond_6
    const v6, 0x7f0f0114

    const/16 v7, 0x8

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    .line 166
    :cond_7
    const v6, 0x7f0f0115

    const/16 v7, 0x8

    .line 167
    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4

    .line 176
    :cond_8
    const v6, 0x7f0f0116

    const/16 v7, 0x8

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_5

    .line 185
    :cond_9
    const v6, 0x7f0f0117

    const/16 v7, 0x8

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_6
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mNoteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 104
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    const v8, 0x7f0f0108

    .line 56
    iget-object v4, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mNoteList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object v2

    .line 60
    :cond_1
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mNoteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 64
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030040

    invoke-direct {v2, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 67
    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v4, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mNoteList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    .line 68
    .local v1, "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    iget-object v4, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->getTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "title":Ljava/lang/String;
    iget-object v4, v1, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->secondTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "null"

    iget-object v5, v1, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->secondTitle:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 71
    invoke-direct {p0, v2, v1, v3}, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->showTwoLineTitle(Landroid/widget/RemoteViews;Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;Ljava/lang/String;)V

    .line 76
    :goto_1
    iget-boolean v4, v1, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isTop:Z

    if-eqz v4, :cond_3

    .line 77
    const-string v4, "setBackgroundResource"

    const v5, 0x7f0200d0

    invoke-virtual {v2, v8, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 84
    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    sget-object v5, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mNoteList:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget v4, v4, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->id:I

    int-to-long v6, v4

    .line 85
    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 87
    const-string v5, "current_label_id"

    iget-object v4, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mNoteList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget v4, v4, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->labelId:I

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string v4, "notepad_widget_start"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    invoke-virtual {v2, v8, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto :goto_0

    .line 73
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-direct {p0, v2, v1, v3}, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->showSingleLineTitle(Landroid/widget/RemoteViews;Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_3
    const-string v4, "setBackgroundResource"

    const v5, 0x7f0200d1

    invoke-virtual {v2, v8, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onDataSetChanged()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mNoteList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mNoteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 119
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    const-string v1, ""

    iget-object v2, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/notepad/utils/Util;->isSingleReverseOpen(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/utils/NotesData;->getNotesData(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mNoteList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    iput-object p1, p0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method
