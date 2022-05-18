.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$15;
.super Landroid/content/AsyncQueryHandler;
.source "EditEventView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->getGroupCount()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p2, "x0"    # Landroid/content/ContentResolver;

    .prologue
    .line 2779
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$15;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2783
    if-eqz p3, :cond_1

    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2784
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$15;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$4202(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;I)I

    .line 2785
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$15;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$15;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$4200(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3002(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;[Ljava/lang/String;)[Ljava/lang/String;

    .line 2786
    const/4 v2, -0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2787
    const/4 v1, 0x0

    .line 2788
    .local v1, "index":I
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2789
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$15;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2790
    const-string v2, "nobody@gmail.com"

    const/4 v3, 0x0

    .line 2791
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2790
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2792
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$15;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)[Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$15;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f0c0189

    .line 2793
    invoke-virtual {v2, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v3, v1

    .line 2797
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2795
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$15;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2801
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .line 2802
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2804
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$15;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$3200(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    .line 2805
    return-void

    .line 2799
    .restart local v1    # "index":I
    :cond_2
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
