.class Lcn/nubia/share/league/LeagueShare$2;
.super Ljava/lang/Object;
.source "LeagueShare.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/share/league/LeagueShare;->initPanelView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/share/league/LeagueShare;


# direct methods
.method constructor <init>(Lcn/nubia/share/league/LeagueShare;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare$2;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$2;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-virtual {p1}, Lcn/nubia/share/league/LeagueShare;->openLeagueShareHelp()V

    return-void
.end method
