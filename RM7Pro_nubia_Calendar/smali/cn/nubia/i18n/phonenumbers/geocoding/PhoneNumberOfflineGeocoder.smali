.class public Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
.super Ljava/lang/Object;
.source "PhoneNumberOfflineGeocoder.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final MAPPING_DATA_DIRECTORY:Ljava/lang/String; = "/com/android/i18n/phonenumbers/geocoding/data/"

.field private static instance:Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;


# instance fields
.field private availablePhonePrefixMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/i18n/phonenumbers/geocoding/AreaCodeMap;",
            ">;"
        }
    .end annotation
.end field

.field private mappingFileProvider:Lcn/nubia/i18n/phonenumbers/geocoding/MappingFileProvider;

.field private final phonePrefixDataDirectory:Ljava/lang/String;

.field private final phoneUtil:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    .line 40
    const-class v0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "phonePrefixDataDirectory"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    .line 47
    new-instance v0, Lcn/nubia/i18n/phonenumbers/geocoding/MappingFileProvider;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/geocoding/MappingFileProvider;-><init>()V

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->mappingFileProvider:Lcn/nubia/i18n/phonenumbers/geocoding/MappingFileProvider;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->availablePhonePrefixMaps:Ljava/util/Map;

    .line 55
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phonePrefixDataDirectory:Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->loadMappingFileProvider()V

    .line 57
    return-void
.end method

.method private static close(Ljava/io/InputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 102
    if-eqz p0, :cond_0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAreaDescriptionForNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "script"    # Ljava/lang/String;
    .param p4, "region"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 256
    .local v0, "countryCallingCode":I
    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    move v3, v0

    .line 259
    .local v3, "phonePrefix":I
    :goto_0
    invoke-direct {p0, v3, p2, p3, p4}, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/geocoding/AreaCodeMap;

    move-result-object v4

    .line 260
    .local v4, "phonePrefixDescriptions":Lcn/nubia/i18n/phonenumbers/geocoding/AreaCodeMap;
    if-eqz v4, :cond_2

    .line 261
    invoke-virtual {v4, p1}, Lcn/nubia/i18n/phonenumbers/geocoding/AreaCodeMap;->lookup(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "description":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    :cond_0
    invoke-direct {p0, p2}, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->mayFallBackToEnglish(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 265
    const-string v5, "en"

    const-string v6, ""

    const-string v7, ""

    invoke-direct {p0, v3, v5, v6, v7}, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/geocoding/AreaCodeMap;

    move-result-object v1

    .line 266
    .local v1, "defaultMap":Lcn/nubia/i18n/phonenumbers/geocoding/AreaCodeMap;
    if-nez v1, :cond_3

    .line 267
    const-string v5, ""

    .line 271
    .end local v1    # "defaultMap":Lcn/nubia/i18n/phonenumbers/geocoding/AreaCodeMap;
    :goto_2
    return-object v5

    .line 257
    .end local v2    # "description":Ljava/lang/String;
    .end local v3    # "phonePrefix":I
    .end local v4    # "phonePrefixDescriptions":Lcn/nubia/i18n/phonenumbers/geocoding/AreaCodeMap;
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v6

    const-wide/32 v8, 0x989680

    div-long/2addr v6, v8

    long-to-int v5, v6

    add-int/lit16 v3, v5, 0x3e8

    goto :goto_0

    .line 261
    .restart local v3    # "phonePrefix":I
    .restart local v4    # "phonePrefixDescriptions":Lcn/nubia/i18n/phonenumbers/geocoding/AreaCodeMap;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 269
    .restart local v1    # "defaultMap":Lcn/nubia/i18n/phonenumbers/geocoding/AreaCodeMap;
    .restart local v2    # "description":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, p1}, Lcn/nubia/i18n/phonenumbers/geocoding/AreaCodeMap;->lookup(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .end local v1    # "defaultMap":Lcn/nubia/i18n/phonenumbers/geocoding/AreaCodeMap;
    :cond_4
    if-eqz v2, :cond_5

    move-object v5, v2

    goto :goto_2

    :cond_5
    const-string v5, ""

    goto :goto_2
.end method

.method private getCountryNameForNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "language"    # Ljava/util/Locale;

    .prologue
    .line 132
    iget-object v1, p0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    .locals 3

    .prologue
    .line 121
    const-class v1, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    const-string v2, "/com/android/i18n/phonenumbers/geocoding/data/"

    invoke-direct {v0, v2}, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    .line 124
    :cond_0
    sget-object v0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/geocoding/AreaCodeMap;
    .locals 2
    .param p1, "prefixMapKey"    # I
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "script"    # Ljava/lang/String;
    .param p4, "region"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v1, p0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->mappingFileProvider:Lcn/nubia/i18n/phonenumbers/geocoding/MappingFileProvider;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcn/nubia/i18n/phonenumbers/geocoding/MappingFileProvider;->getFileName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 77
    const/4 v1, 0x0

    .line 82
    :goto_0
    return-object v1

    .line 79
    :cond_0
    iget-object v1, p0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-direct {p0, v0}, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->loadAreaCodeMapFromFile(Ljava/lang/String;)V

    .line 82
    :cond_1
    iget-object v1, p0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/i18n/phonenumbers/geocoding/AreaCodeMap;

    goto :goto_0
.end method

.method private getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/util/Locale;

    .prologue
    .line 140
    if-eqz p1, :cond_0

    const-string v0, "ZZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "001"

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    .line 140
    :goto_0
    return-object v0

    .line 141
    :cond_1
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, p2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadAreaCodeMapFromFile(Ljava/lang/String;)V
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 86
    const-class v5, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phonePrefixDataDirectory:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 88
    .local v4, "source":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 90
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v3, Lcn/nubia/i18n/phonenumbers/geocoding/AreaCodeMap;

    invoke-direct {v3}, Lcn/nubia/i18n/phonenumbers/geocoding/AreaCodeMap;-><init>()V

    .line 92
    .local v3, "map":Lcn/nubia/i18n/phonenumbers/geocoding/AreaCodeMap;
    invoke-virtual {v3, v2}, Lcn/nubia/i18n/phonenumbers/geocoding/AreaCodeMap;->readExternal(Ljava/io/ObjectInput;)V

    .line 93
    iget-object v5, p0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    invoke-static {v2}, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 99
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .end local v3    # "map":Lcn/nubia/i18n/phonenumbers/geocoding/AreaCodeMap;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    sget-object v5, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    invoke-static {v1}, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v1}, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    .line 98
    throw v5

    .line 97
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 94
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private loadMappingFileProvider()V
    .locals 7

    .prologue
    .line 60
    const-class v4, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phonePrefixDataDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "config"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 62
    .local v3, "source":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 64
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    iget-object v4, p0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->mappingFileProvider:Lcn/nubia/i18n/phonenumbers/geocoding/MappingFileProvider;

    invoke-virtual {v4, v2}, Lcn/nubia/i18n/phonenumbers/geocoding/MappingFileProvider;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    invoke-static {v2}, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 71
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    sget-object v4, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    invoke-static {v1}, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v1}, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    .line 70
    throw v4

    .line 69
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 66
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private mayFallBackToEnglish(Ljava/lang/String;)Z
    .locals 1
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 279
    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ja"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ko"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDescriptionForNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;

    .prologue
    .line 214
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    const-string v0, ""

    .line 217
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDescriptionForNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;
    .param p3, "userRegion"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    const-string v0, ""

    .line 237
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDescriptionForValidNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;

    .prologue
    .line 158
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "langStr":Ljava/lang/String;
    const-string v3, ""

    .line 160
    .local v3, "scriptStr":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "regionStr":Ljava/lang/String;
    invoke-direct {p0, p1, v1, v3, v2}, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getAreaDescriptionForNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "areaDescription":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .end local v0    # "areaDescription":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 165
    .restart local v0    # "areaDescription":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getCountryNameForNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDescriptionForValidNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;
    .param p3, "userRegion"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v1, p0, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "regionCode":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {p0, p1, p2}, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 199
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0, p2}, Lcn/nubia/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
