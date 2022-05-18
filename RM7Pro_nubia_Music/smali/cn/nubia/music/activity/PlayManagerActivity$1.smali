.class Lcn/nubia/music/activity/PlayManagerActivity$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "PlayManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/PlayManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/PlayManagerActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/PlayManagerActivity;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcn/nubia/music/activity/PlayManagerActivity$1;->a:Lcn/nubia/music/activity/PlayManagerActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 158
    iget-object v0, p0, Lcn/nubia/music/activity/PlayManagerActivity$1;->a:Lcn/nubia/music/activity/PlayManagerActivity;

    invoke-static {v0, p1}, Lcn/nubia/music/activity/PlayManagerActivity;->access$000(Lcn/nubia/music/activity/PlayManagerActivity;I)V

    .line 159
    return-void
.end method
