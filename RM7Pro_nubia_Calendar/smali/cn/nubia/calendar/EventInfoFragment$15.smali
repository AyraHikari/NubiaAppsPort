.class Lcn/nubia/calendar/EventInfoFragment$15;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/EventInfoFragment;->setEventPicture(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/EventInfoFragment;

.field final synthetic val$cusWhereArgs:[Ljava/lang/String;

.field final synthetic val$customUri:Landroid/net/Uri;

.field final synthetic val$image:Landroid/widget/ImageView;

.field final synthetic val$projection:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/EventInfoFragment;Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 2130
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$15;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    iput-object p2, p0, Lcn/nubia/calendar/EventInfoFragment$15;->val$customUri:Landroid/net/Uri;

    iput-object p3, p0, Lcn/nubia/calendar/EventInfoFragment$15;->val$projection:[Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/calendar/EventInfoFragment$15;->val$cusWhereArgs:[Ljava/lang/String;

    iput-object p5, p0, Lcn/nubia/calendar/EventInfoFragment$15;->val$image:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x42c00000    # 96.0f

    .line 2132
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$15;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$000(Lcn/nubia/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$15;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$000(Lcn/nubia/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2133
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$15;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$2900(Lcn/nubia/calendar/EventInfoFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$15;->val$customUri:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$15;->val$projection:[Ljava/lang/String;

    const-string v3, "event_id=?"

    iget-object v4, p0, Lcn/nubia/calendar/EventInfoFragment$15;->val$cusWhereArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2136
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2137
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2139
    .local v8, "path":Ljava/lang/String;
    invoke-static {v8, v9, v9}, Lcn/nubia/calendar/util/PictureUtils;->getBitmapByPathForScale(Ljava/lang/String;FF)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2141
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 2142
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$15;->val$image:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2143
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$15;->val$image:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2145
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$15;->val$image:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/calendar/EventInfoFragment$15$1;

    invoke-direct {v1, p0, v8}, Lcn/nubia/calendar/EventInfoFragment$15$1;-><init>(Lcn/nubia/calendar/EventInfoFragment$15;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2155
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2158
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "path":Ljava/lang/String;
    :cond_1
    return-void
.end method
