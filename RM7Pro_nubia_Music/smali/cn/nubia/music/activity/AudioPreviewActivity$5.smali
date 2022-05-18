.class Lcn/nubia/music/activity/AudioPreviewActivity$5;
.super Landroid/content/AsyncQueryHandler;
.source "AudioPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/AudioPreviewActivity;->initContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/AudioPreviewActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/AudioPreviewActivity;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$5;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 293
    if-eqz p3, :cond_5

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 295
    const-string v0, "title"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 296
    const-string v1, "artist"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 297
    const-string v2, "_display_name"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 299
    if-ltz v0, :cond_3

    .line 300
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v2, p0, Lcn/nubia/music/activity/AudioPreviewActivity$5;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v2}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$700(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/ui/ScrollForeverTextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/nubia/music/ui/ScrollForeverTextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    if-ltz v1, :cond_1

    .line 303
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    const-string v1, "<unknown>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$5;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    const v1, 0x7f0b0134

    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_0
    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$5;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$800(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/ui/ScrollForeverTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/music/ui/ScrollForeverTextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 322
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 324
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$5;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->setNames()V

    .line 325
    return-void

    .line 310
    :cond_3
    if-ltz v2, :cond_4

    .line 311
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$5;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$700(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/ui/ScrollForeverTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/music/ui/ScrollForeverTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 315
    :cond_4
    const-string v0, "Cursor had no names for us"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_5
    const-string v0, "empty cursor"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
