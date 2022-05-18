.class public Lcn/nubia/touping/Utils/MyPresentation;
.super Landroid/app/Presentation;
.source "MyPresentation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyPresentation"

.field private static list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/touping/Utils/MyPresentation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private currentTouPing:I

.field private isSecure:Z

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .locals 1
    .param p1, "outerContext"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "theme"    # I

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    .line 28
    iput v0, p0, Lcn/nubia/touping/Utils/MyPresentation;->currentTouPing:I

    .line 29
    iput-boolean v0, p0, Lcn/nubia/touping/Utils/MyPresentation;->isSecure:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;IZ)V
    .locals 1
    .param p1, "outerContext"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "currentTouPing"    # I
    .param p4, "isSecure"    # Z

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 28
    iput v0, p0, Lcn/nubia/touping/Utils/MyPresentation;->currentTouPing:I

    .line 29
    iput-boolean v0, p0, Lcn/nubia/touping/Utils/MyPresentation;->isSecure:Z

    .line 35
    iput p3, p0, Lcn/nubia/touping/Utils/MyPresentation;->currentTouPing:I

    .line 36
    iput-boolean p4, p0, Lcn/nubia/touping/Utils/MyPresentation;->isSecure:Z

    .line 37
    return-void
.end method

.method public static crearList(I)V
    .locals 4
    .param p0, "nubiaType"    # I

    .prologue
    .line 100
    :try_start_0
    sget-object v3, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 112
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, "has_removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v3, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 103
    sget-object v3, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/touping/Utils/MyPresentation;

    iget v3, v3, Lcn/nubia/touping/Utils/MyPresentation;->currentTouPing:I

    if-ne v3, p0, :cond_1

    .line 104
    sget-object v3, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/touping/Utils/MyPresentation;

    invoke-virtual {v3}, Lcn/nubia/touping/Utils/MyPresentation;->dismiss()V

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    :cond_2
    sget-object v3, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v1    # "has_removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized hideWindowForHelpUserPrivateInfo(Z)V
    .locals 8
    .param p0, "isSecure"    # Z

    .prologue
    .line 158
    const-class v4, Lcn/nubia/touping/Utils/MyPresentation;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    .line 170
    :try_start_1
    sget-object v3, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 171
    const-string v3, "MyPresentation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "789987678 displays[i].getName() = show display list.size()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    .line 159
    :cond_1
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v1, "has_removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v3, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 161
    const-string v3, "MyPresentation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hideWindowForHelpUserPrivateInfo isSecureWindow()  if = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v3, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/touping/Utils/MyPresentation;

    invoke-virtual {v3}, Lcn/nubia/touping/Utils/MyPresentation;->dismiss()V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 164
    :cond_2
    const-string v3, "MyPresentation"

    const-string v5, "789987678 has hide"

    invoke-static {v3, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v3, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 170
    :try_start_3
    sget-object v3, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 171
    const-string v3, "MyPresentation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "789987678 displays[i].getName() = show display list.size()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 158
    .end local v1    # "has_removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    const-string v3, "MyPresentation"

    const-string v5, "789987678 hideWindowForHelpUserPrivateInfo exception"

    invoke-static {v3, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 170
    :try_start_5
    sget-object v3, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 171
    const-string v3, "MyPresentation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "789987678 displays[i].getName() = show display list.size()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    sget-object v5, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 171
    const-string v5, "MyPresentation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "789987678 displays[i].getName() = show display list.size()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static declared-synchronized showWindowForHelpUserPrivateInfo(Landroid/content/Context;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSecure"    # Z

    .prologue
    .line 117
    const-class v8, Lcn/nubia/touping/Utils/MyPresentation;

    monitor-enter v8

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v9, "display"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 118
    .local v2, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    .line 119
    .local v3, "displays":[Landroid/view/Display;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v7, v3

    if-ge v5, v7, :cond_6

    .line 120
    aget-object v1, v3, v5

    .line 121
    .local v1, "display":Landroid/view/Display;
    const-string v7, "MyPresentation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showWindowForHelpUserPrivateInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "HDMI "

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 123
    new-instance v6, Lcn/nubia/touping/Utils/MyPresentation;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v9, 0x4

    invoke-direct {v6, v7, v1, v9, p1}, Lcn/nubia/touping/Utils/MyPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;IZ)V

    .line 124
    .local v6, "myPresentation":Lcn/nubia/touping/Utils/MyPresentation;
    invoke-virtual {v6}, Lcn/nubia/touping/Utils/MyPresentation;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v9, 0x7f6

    invoke-virtual {v7, v9}, Landroid/view/Window;->setType(I)V

    .line 125
    invoke-virtual {v6}, Lcn/nubia/touping/Utils/MyPresentation;->show()V

    .line 126
    sget-object v7, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    const-string v7, "MyPresentation"

    const-string v9, "displays[i].getName() = show HDMI"

    invoke-static {v7, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v6    # "myPresentation":Lcn/nubia/touping/Utils/MyPresentation;
    :cond_0
    invoke-virtual {v1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "ScreenCastThread-display"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "WifiDisplay"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 131
    :cond_1
    const/4 v0, 0x0

    .line 132
    .local v0, "currentTouPing":I
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 133
    const/4 v0, 0x1

    .line 139
    :cond_2
    :goto_1
    new-instance v6, Lcn/nubia/touping/Utils/MyPresentation;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v1, v0, p1}, Lcn/nubia/touping/Utils/MyPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;IZ)V

    .line 140
    .restart local v6    # "myPresentation":Lcn/nubia/touping/Utils/MyPresentation;
    invoke-virtual {v6}, Lcn/nubia/touping/Utils/MyPresentation;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v9, 0x7f6

    invoke-virtual {v7, v9}, Landroid/view/Window;->setType(I)V

    .line 141
    invoke-virtual {v6}, Lcn/nubia/touping/Utils/MyPresentation;->show()V

    .line 142
    sget-object v7, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v7, "MyPresentation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "789987678 has show list.size() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v0    # "currentTouPing":I
    .end local v6    # "myPresentation":Lcn/nubia/touping/Utils/MyPresentation;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 134
    .restart local v0    # "currentTouPing":I
    :cond_4
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v7

    if-eqz v7, :cond_5

    sget-boolean v7, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-nez v7, :cond_5

    .line 135
    const/4 v0, 0x2

    goto :goto_1

    .line 136
    :cond_5
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-boolean v7, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_2

    .line 137
    const/4 v0, 0x3

    goto :goto_1

    .line 150
    .end local v0    # "currentTouPing":I
    .end local v1    # "display":Landroid/view/Display;
    :cond_6
    :try_start_1
    sget-object v7, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    .line 151
    const-string v7, "MyPresentation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "displays[i].getName() = show display list.size()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .end local v2    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v3    # "displays":[Landroid/view/Display;
    .end local v5    # "i":I
    :cond_7
    :goto_2
    monitor-exit v8

    return-void

    .line 146
    :catch_0
    move-exception v4

    .line 147
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    const-string v7, "MyPresentation"

    const-string v9, "showWindowForHelpUserPrivateInfo exception"

    invoke-static {v7, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    :try_start_3
    sget-object v7, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    .line 151
    const-string v7, "MyPresentation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "displays[i].getName() = show display list.size()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 117
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 150
    :catchall_1
    move-exception v7

    :try_start_4
    sget-object v9, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    if-eqz v9, :cond_8

    .line 151
    const-string v9, "MyPresentation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "displays[i].getName() = show display list.size()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcn/nubia/touping/Utils/MyPresentation;->list:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private startAlpAnimal()V
    .locals 4

    .prologue
    .line 76
    :try_start_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcn/nubia/touping/Utils/MyPresentation;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 77
    iget-object v1, p0, Lcn/nubia/touping/Utils/MyPresentation;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 78
    iget-object v1, p0, Lcn/nubia/touping/Utils/MyPresentation;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/touping/Utils/MyPresentation;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 79
    iget-object v1, p0, Lcn/nubia/touping/Utils/MyPresentation;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private stopAlpAnimal()V
    .locals 2

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/Utils/MyPresentation;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcn/nubia/touping/Utils/MyPresentation;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/touping/Utils/MyPresentation;->alphaAnimation:Landroid/view/animation/AlphaAnimation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcn/nubia/touping/Utils/MyPresentation;->stopAlpAnimal()V

    .line 70
    invoke-super {p0}, Landroid/app/Presentation;->dismiss()V

    .line 71
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcn/nubia/touping/Utils/MyPresentation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04005b

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcn/nubia/touping/Utils/MyPresentation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/touping/Utils/PhoneInfo;->getWidth(Landroid/content/Context;)I

    move-result v2

    .line 49
    .local v2, "width":I
    invoke-virtual {p0}, Lcn/nubia/touping/Utils/MyPresentation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/touping/Utils/PhoneInfo;->getHeight(Landroid/content/Context;)I

    move-result v0

    .line 50
    .local v0, "heigt":I
    if-le v2, v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcn/nubia/touping/Utils/MyPresentation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04005c

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    :cond_0
    invoke-virtual {p0, v1}, Lcn/nubia/touping/Utils/MyPresentation;->setContentView(Landroid/view/View;)V

    .line 58
    const v3, 0x7f0e0125

    invoke-virtual {p0, v3}, Lcn/nubia/touping/Utils/MyPresentation;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/touping/Utils/MyPresentation;->textView:Landroid/widget/TextView;

    .line 59
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Presentation;->show()V

    .line 64
    invoke-direct {p0}, Lcn/nubia/touping/Utils/MyPresentation;->startAlpAnimal()V

    .line 65
    return-void
.end method
