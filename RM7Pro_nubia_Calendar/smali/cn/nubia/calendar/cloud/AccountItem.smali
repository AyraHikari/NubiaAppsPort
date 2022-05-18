.class public Lcn/nubia/calendar/cloud/AccountItem;
.super Ljava/lang/Object;
.source "AccountItem.java"


# instance fields
.field public mAccountName:Ljava/lang/String;

.field public mAccountType:Ljava/lang/String;

.field public mCalendarDisplayName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "calendarDisplayName"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcn/nubia/calendar/cloud/AccountItem;->mAccountName:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcn/nubia/calendar/cloud/AccountItem;->mAccountType:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcn/nubia/calendar/cloud/AccountItem;->mCalendarDisplayName:Ljava/lang/String;

    .line 13
    return-void
.end method
