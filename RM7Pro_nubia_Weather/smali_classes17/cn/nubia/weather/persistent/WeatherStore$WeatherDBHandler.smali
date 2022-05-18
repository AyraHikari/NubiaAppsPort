.class Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;
.super Landroid/content/AsyncQueryHandler;
.source "WeatherStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/persistent/WeatherStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherDBHandler"
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/weather/persistent/QueryCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/weather/persistent/WeatherStore;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/persistent/WeatherStore;Landroid/content/ContentResolver;)V
    .locals 1
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 55
    iput-object p1, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->this$0:Lcn/nubia/weather/persistent/WeatherStore;

    .line 56
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->mCallbacks:Ljava/util/Map;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->mCallbacks:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public addCallback(Ljava/lang/Integer;Lcn/nubia/weather/persistent/QueryCallback;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/Integer;
    .param p2, "callback"    # Lcn/nubia/weather/persistent/QueryCallback;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    .line 70
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 71
    .local v0, "i":Ljava/lang/Integer;
    iget-object v1, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->removeCallback(Ljava/lang/Integer;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    .line 79
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 80
    .local v0, "i":Ljava/lang/Integer;
    iget-object v1, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->removeCallback(Ljava/lang/Integer;)V

    .line 83
    :cond_0
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "itoken"    # I
    .param p2, "icookie"    # Ljava/lang/Object;
    .param p3, "icursor"    # Landroid/database/Cursor;

    .prologue
    .line 87
    const-string v3, "weatherstore onQueryComplete"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 89
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 90
    move v2, p1

    .line 91
    .local v2, "token":I
    move-object v0, p2

    .line 92
    .local v0, "cookie":Ljava/lang/Object;
    move-object v1, p3

    .line 93
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler$1;

    invoke-direct {v4, p0, v2, v0, v1}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler$1;-><init>(Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;ILjava/lang/Object;Landroid/database/Cursor;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 116
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 120
    return-void

    .line 118
    .end local v0    # "cookie":Ljava/lang/Object;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "token":I
    :catchall_0
    move-exception v3

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v3
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    .line 125
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 126
    .local v0, "i":Ljava/lang/Integer;
    iget-object v1, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->removeCallback(Ljava/lang/Integer;)V

    .line 129
    :cond_0
    return-void
.end method

.method public removeCallback(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/Integer;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method
