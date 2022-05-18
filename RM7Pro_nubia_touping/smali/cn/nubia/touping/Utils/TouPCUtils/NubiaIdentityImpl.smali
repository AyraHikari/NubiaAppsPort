.class public Lcn/nubia/touping/Utils/TouPCUtils/NubiaIdentityImpl;
.super Ljava/lang/Object;
.source "NubiaIdentityImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaLog"

.field private static uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "content://cn.nubia.identity/identity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/touping/Utils/TouPCUtils/NubiaIdentityImpl;->uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAAID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v5, 0x0

    .line 137
    .local v5, "message":Ljava/lang/String;
    const/4 v0, 0x0

    .line 139
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_2

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcn/nubia/touping/Utils/TouPCUtils/NubiaIdentityImpl;->uri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 141
    .local v2, "contentResolver":Landroid/content/ContentProviderClient;
    const-string v6, "getAAID"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, p1, v7}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 142
    if-eqz v2, :cond_0

    .line 143
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_1

    .line 144
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    .line 153
    .end local v2    # "contentResolver":Landroid/content/ContentProviderClient;
    :cond_0
    :goto_0
    const-string v6, "code"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 154
    .local v1, "code":I
    if-nez v1, :cond_3

    .line 155
    const-string v6, "id"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "id":Ljava/lang/String;
    const-string v6, "NubiaLog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "succeed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v1    # "code":I
    .end local v4    # "id":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 146
    .restart local v2    # "contentResolver":Landroid/content/ContentProviderClient;
    :cond_1
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v2    # "contentResolver":Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v3

    .line 163
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    move-object v4, v5

    .line 165
    goto :goto_1

    .line 150
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 151
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    sget-object v6, Lcn/nubia/touping/Utils/TouPCUtils/NubiaIdentityImpl;->uri:Landroid/net/Uri;

    const-string v7, "getAAID"

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, p1, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 159
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v1    # "code":I
    :cond_3
    const-string v6, "message"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 160
    const-string v6, "NubiaLog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static getOAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 65
    .local v5, "message":Ljava/lang/String;
    :try_start_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_2

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcn/nubia/touping/Utils/TouPCUtils/NubiaIdentityImpl;->uri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 67
    .local v2, "contentResolver":Landroid/content/ContentProviderClient;
    const-string v6, "getOAID"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 68
    if-eqz v2, :cond_0

    .line 69
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_1

    .line 70
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    .line 79
    .end local v2    # "contentResolver":Landroid/content/ContentProviderClient;
    :cond_0
    :goto_0
    const-string v6, "code"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 80
    .local v1, "code":I
    if-nez v1, :cond_3

    .line 81
    const-string v6, "id"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "id":Ljava/lang/String;
    const-string v6, "NubiaLog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "succeed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v1    # "code":I
    .end local v4    # "id":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 72
    .restart local v2    # "contentResolver":Landroid/content/ContentProviderClient;
    :cond_1
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v2    # "contentResolver":Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v3

    .line 89
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    move-object v4, v5

    .line 91
    goto :goto_1

    .line 76
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 77
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    sget-object v6, Lcn/nubia/touping/Utils/TouPCUtils/NubiaIdentityImpl;->uri:Landroid/net/Uri;

    const-string v7, "getOAID"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 85
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v1    # "code":I
    :cond_3
    const-string v6, "message"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    const-string v6, "NubiaLog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static getUDID(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 102
    .local v5, "message":Ljava/lang/String;
    :try_start_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_2

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcn/nubia/touping/Utils/TouPCUtils/NubiaIdentityImpl;->uri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 104
    .local v2, "contentResolver":Landroid/content/ContentProviderClient;
    const-string v6, "getUDID"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 105
    if-eqz v2, :cond_0

    .line 106
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_1

    .line 107
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    .line 116
    .end local v2    # "contentResolver":Landroid/content/ContentProviderClient;
    :cond_0
    :goto_0
    const-string v6, "code"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 117
    .local v1, "code":I
    if-nez v1, :cond_3

    .line 118
    const-string v6, "id"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "id":Ljava/lang/String;
    const-string v6, "NubiaLog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "succeed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v1    # "code":I
    .end local v4    # "id":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 109
    .restart local v2    # "contentResolver":Landroid/content/ContentProviderClient;
    :cond_1
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    .end local v2    # "contentResolver":Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v3

    .line 126
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    move-object v4, v5

    .line 128
    goto :goto_1

    .line 113
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 114
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    sget-object v6, Lcn/nubia/touping/Utils/TouPCUtils/NubiaIdentityImpl;->uri:Landroid/net/Uri;

    const-string v7, "getUDID"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 122
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v1    # "code":I
    :cond_3
    const-string v6, "message"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 123
    const-string v6, "NubiaLog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static getVAID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v5, 0x0

    .line 174
    .local v5, "message":Ljava/lang/String;
    const/4 v0, 0x0

    .line 176
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_2

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcn/nubia/touping/Utils/TouPCUtils/NubiaIdentityImpl;->uri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 178
    .local v2, "contentResolver":Landroid/content/ContentProviderClient;
    const-string v6, "getVAID"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, p1, v7}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 179
    if-eqz v2, :cond_0

    .line 180
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_1

    .line 181
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    .line 190
    .end local v2    # "contentResolver":Landroid/content/ContentProviderClient;
    :cond_0
    :goto_0
    const-string v6, "code"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 191
    .local v1, "code":I
    if-nez v1, :cond_3

    .line 192
    const-string v6, "id"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "id":Ljava/lang/String;
    const-string v6, "NubiaLog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "succeed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v1    # "code":I
    .end local v4    # "id":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 183
    .restart local v2    # "contentResolver":Landroid/content/ContentProviderClient;
    :cond_1
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    .end local v2    # "contentResolver":Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v3

    .line 200
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    move-object v4, v5

    .line 202
    goto :goto_1

    .line 187
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 188
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    sget-object v6, Lcn/nubia/touping/Utils/TouPCUtils/NubiaIdentityImpl;->uri:Landroid/net/Uri;

    const-string v7, "getVAID"

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, p1, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0

    .line 196
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v1    # "code":I
    :cond_3
    const-string v6, "message"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 197
    const-string v6, "NubiaLog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 27
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_2

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcn/nubia/touping/Utils/TouPCUtils/NubiaIdentityImpl;->uri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 29
    .local v2, "contentResolver":Landroid/content/ContentProviderClient;
    const-string v6, "isSupport"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 30
    if-eqz v2, :cond_0

    .line 31
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_1

    .line 32
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    .line 41
    .end local v2    # "contentResolver":Landroid/content/ContentProviderClient;
    :cond_0
    :goto_0
    const-string v6, "code"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 42
    .local v1, "code":I
    if-nez v1, :cond_3

    .line 43
    const-string v6, "NubiaLog"

    const-string v7, "succeed"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v6, "issupport"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 53
    .end local v1    # "code":I
    :goto_1
    return v4

    .line 34
    .restart local v2    # "contentResolver":Landroid/content/ContentProviderClient;
    :cond_1
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v2    # "contentResolver":Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v3

    .line 51
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 38
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 39
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    sget-object v6, Lcn/nubia/touping/Utils/TouPCUtils/NubiaIdentityImpl;->uri:Landroid/net/Uri;

    const-string v7, "isSupport"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 47
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v1    # "code":I
    :cond_3
    const-string v6, "message"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "message":Ljava/lang/String;
    const-string v6, "NubiaLog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
