.class public Lcn/nubia/calendar/CalendarRecentSuggestionsProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "CalendarRecentSuggestionsProvider.java"


# static fields
.field public static final MODE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/calendar/util/Utils;->getSearchAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/calendar/CalendarRecentSuggestionsProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 32
    invoke-super {p0}, Landroid/content/SearchRecentSuggestionsProvider;->onCreate()Z

    move-result v0

    return v0
.end method
