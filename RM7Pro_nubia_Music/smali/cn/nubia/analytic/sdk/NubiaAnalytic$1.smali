.class Lcn/nubia/analytic/sdk/NubiaAnalytic$1;
.super Ljava/lang/Object;
.source "NubiaAnalytic.java"

# interfaces
.implements Lcn/nubia/analytic/interfaces/RemoteDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/analytic/sdk/NubiaAnalytic;->fetchWhiteSheet(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/nubia/analytic/sdk/NubiaAnalytic$1;->a:Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;

    iput-object p2, p0, Lcn/nubia/analytic/sdk/NubiaAnalytic$1;->b:Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(I)V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcn/nubia/analytic/sdk/NubiaAnalytic$1;->a:Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;->onResult(ZLjava/lang/String;)V

    .line 153
    const-string v0, "NubiaAnalytic"

    const-string v1, "whitesheet error"

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 120
    const-string v0, "NubiaAnalytic"

    const-string v1, "fetchWhiteSheet onSuccess"

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    if-nez p1, :cond_0

    .line 122
    iget-object v0, p0, Lcn/nubia/analytic/sdk/NubiaAnalytic$1;->a:Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;

    const-string v1, ""

    invoke-interface {v0, v7, v1}, Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;->onResult(ZLjava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v0, "responseFetchWhiteSheet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 126
    const-string v0, "responseTrafficUUID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    const-string v0, "NubiaAnalytic"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "trafficUUID :"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v1, v2

    .line 129
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 139
    :goto_2
    iget-object v0, p0, Lcn/nubia/analytic/sdk/NubiaAnalytic$1;->a:Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;

    invoke-interface {v0, v7, v4}, Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;->onResult(ZLjava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_1
    const-string v5, "NubiaAnalytic"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "whiteSheet :"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ":key:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcn/nubia/analytic/sdk/NubiaAnalytic$1;->b:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcn/nubia/analytic/sdk/NubiaAnalytic$1;->a:Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;

    invoke-interface {v0, v2, v4}, Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;->onResult(ZLjava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 137
    :cond_3
    const-string v0, "NubiaAnalytic"

    const-string v1, "whiteSheet null"

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
