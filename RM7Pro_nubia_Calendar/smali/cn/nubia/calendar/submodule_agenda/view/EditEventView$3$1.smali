.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3$1;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;

    .prologue
    .line 1052
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v12, 0x1

    .line 1058
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1060
    .local v4, "isSdcardExist":Z
    const/4 v5, 0x0

    .line 1061
    .local v5, "isSecondExist":Z
    if-nez v4, :cond_0

    .line 1063
    invoke-static {}, Lcn/nubia/calendar/EnvironmentProxy;->getSecondaryStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    .line 1064
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1066
    :cond_0
    if-eqz v4, :cond_2

    .line 1067
    const/4 v3, 0x0

    .line 1068
    .local v3, "intent":Landroid/content/Intent;
    packed-switch p2, :pswitch_data_0

    .line 1192
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1070
    .restart local v3    # "intent":Landroid/content/Intent;
    :pswitch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyyMMddHHmmss"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 1072
    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1074
    .local v2, "fileName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1075
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 1076
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/zcalendar/picture"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1078
    .local v7, "path":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1079
    .local v8, "pathFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1081
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 1083
    :cond_1
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v9, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1085
    .restart local v3    # "intent":Landroid/content/Intent;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    .local v6, "output":Ljava/io/File;
    const-string v9, "output"

    .line 1089
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 1087
    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1091
    :try_start_0
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;

    iget-object v9, v9, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v9}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    .line 1092
    invoke-virtual {v9, v3, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1101
    :goto_1
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;

    iget-object v9, v9, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .line 1102
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 1101
    invoke-static {v9, v10}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2302(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1095
    :catch_0
    move-exception v1

    .line 1096
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1097
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 1098
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1105
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v6    # "output":Ljava/io/File;
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "pathFile":Ljava/io/File;
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v9, "android.intent.action.PICK"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1107
    .restart local v3    # "intent":Landroid/content/Intent;
    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v10, "image/*"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    :try_start_1
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;

    iget-object v9, v9, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v9}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x2

    .line 1112
    invoke-virtual {v9, v3, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 1115
    :catch_2
    move-exception v1

    .line 1116
    .restart local v1    # "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1117
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    :catch_3
    move-exception v0

    .line 1118
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1124
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    if-eqz v5, :cond_4

    .line 1125
    const/4 v3, 0x0

    .line 1126
    .restart local v3    # "intent":Landroid/content/Intent;
    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    .line 1128
    :pswitch_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyyMMddHHmmss"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 1130
    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1132
    .restart local v2    # "fileName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1133
    invoke-static {}, Lcn/nubia/calendar/EnvironmentProxy;->getSecondaryStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 1134
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/zcalendar/picture"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1136
    .restart local v7    # "path":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1137
    .restart local v8    # "pathFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1139
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 1141
    :cond_3
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v9, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1143
    .restart local v3    # "intent":Landroid/content/Intent;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    .restart local v6    # "output":Ljava/io/File;
    const-string v9, "output"

    .line 1147
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 1145
    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1149
    :try_start_2
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;

    iget-object v9, v9, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v9}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    .line 1150
    invoke-virtual {v9, v3, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 1159
    :goto_2
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;

    iget-object v9, v9, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .line 1160
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 1159
    invoke-static {v9, v10}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2302(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1153
    :catch_4
    move-exception v1

    .line 1154
    .restart local v1    # "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 1155
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    :catch_5
    move-exception v0

    .line 1156
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1163
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v6    # "output":Ljava/io/File;
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "pathFile":Ljava/io/File;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v9, "android.intent.action.PICK"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1165
    .restart local v3    # "intent":Landroid/content/Intent;
    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v10, "image/*"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1169
    :try_start_3
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;

    iget-object v9, v9, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v9}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x2

    .line 1170
    invoke-virtual {v9, v3, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    goto/16 :goto_0

    .line 1173
    :catch_6
    move-exception v1

    .line 1174
    .restart local v1    # "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1175
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    :catch_7
    move-exception v0

    .line 1176
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1183
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1184
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;

    iget-object v9, v9, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .line 1185
    invoke-static {v9}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;

    iget-object v10, v10, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$3;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .line 1186
    invoke-static {v10}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v10

    .line 1187
    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0202

    .line 1188
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1184
    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 1190
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1068
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1126
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
