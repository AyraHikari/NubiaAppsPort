.class final Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$2;
.super Landroid/content/AsyncQueryHandler;
.source "EditEventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->queryReminderPhoneNumbers(Landroid/app/Activity;JI)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/ContentResolver;

    .prologue
    .line 449
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 452
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 456
    :cond_0
    if-eqz p3, :cond_1

    .line 458
    const/4 p3, 0x0

    .line 460
    :cond_1
    return-void
.end method
