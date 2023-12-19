/*
 * SPDX-FileCopyrightText: (C) 2012-2015 Vishesh Handa <vhanda@kde.org>
 *
 * SPDX-LicenseIdentifier: LGPL-2.1-or-later
 */

#ifndef FILESYSTEMIMAGEFETCHER_H
#define FILESYSTEMIMAGEFETCHER_H

#include <QObject>
#include "koko_export.h"

class KOKO_EXPORT FileSystemImageFetcher : public QObject
{
    Q_OBJECT
public:
    explicit FileSystemImageFetcher(const QString& folder, QObject* parent = 0);
    void fetch();

signals:
    void imageResult(const QString& filePath);
    void finished();

private slots:
    void slotProcess();

private:
    QString m_folder;
};

#endif // FILESYSTEMIMAGEFETCHER_H
